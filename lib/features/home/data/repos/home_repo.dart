import 'package:dartz/dartz.dart';
import 'package:kartngo/core/errors/failures.dart';
import 'package:kartngo/features/home/data/models/product_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductModel>>> getAllProducts();
}
