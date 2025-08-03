import 'package:bloc/bloc.dart';
import 'package:kartngo/features/home/data/models/product_model.dart';
import 'package:kartngo/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'get_all_products_state.dart';

class GetAllProductsCubit extends Cubit<GetAllProductsState> {
  GetAllProductsCubit(this.homeRepo) : super(GetAllProductsInitial());
  final HomeRepo homeRepo;

  Future<void> getAllProducts() async {
    emit(GetAllProductsLoading());

    final result = await homeRepo.getAllProducts();
    result.fold(
      (failure) =>
          emit(GetAllProductsFailure(errorMessage: failure.errMessage)),
      (products) => emit(GetAllProductsSuccess(products: products)),
    );
  }
}
