import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate');
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with ApiServer');
      case DioExceptionType.unknown:
        if (dioException.message != null &&
            dioException.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unknown error occurred');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, pls try later');
    } else {
      return ServerFailure('Opps there was an error, pls try later');
    }
  }
}

class FirestoreFailure extends Failure {
  FirestoreFailure(super.errMessage);

  factory FirestoreFailure.fromException(dynamic e) {
    // تقدر توسع دي حسب الخطأ اللي بيجيلك
    if (e is FirebaseException) {
      return FirestoreFailure(e.message ?? 'Unknown Firebase error');
    } else {
      return FirestoreFailure(e.toString());
    }
  }
}
