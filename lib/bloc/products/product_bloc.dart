import 'package:bloc/bloc.dart';
import 'package:mobile_shop/bloc/products/product_event.dart';
import 'package:mobile_shop/bloc/products/product_state.dart';
import 'package:mobile_shop/data/datasource/detail_product_datasource.dart';
import 'package:mobile_shop/data/repository/product_detail_repository.dart';

import '../../data/repository/product_repository.dart';
import '../../di/di.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductDetailInitState()) {
    final IDetailRepository _productRepository = locator.get();
    on<ProductGetInitializedData>((event, emit) async {
      emit(ProductDetailLoadingState());
      var response = await _productRepository.getProductImage();
      emit(ProductDetailResponseState(response));
    });
  }
}
