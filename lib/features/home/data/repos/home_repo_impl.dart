import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:kartngo/core/errors/failures.dart';
import 'package:kartngo/features/home/data/models/product_model.dart';
import 'package:kartngo/features/home/data/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final FirebaseFirestore firestore;

  HomeRepoImpl(this.firestore);
  @override
  Future<Either<Failure, List<ProductModel>>> getAllProducts() async {
    try {
      final snapshot = await firestore.collection('products').get();
      final products = snapshot.docs
          .map((doc) => ProductModel.fromJson(doc.data()))
          .toList();
      return right(products);
    } catch (e) {
      return left(FirestoreFailure.fromException(e));
    }
  }
}
