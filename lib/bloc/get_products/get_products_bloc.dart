// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

import 'package:vape_store/data/datasources/product_vape_datasource.dart';
import 'package:vape_store/data/models/list_product_response_model.dart';

part 'get_products_event.dart';
part 'get_products_state.dart';

class GetProductsBloc extends Bloc<GetProductsEvent, GetProductsState> {
  final ProductVapeDatasource datasource;
  GetProductsBloc(
    this.datasource,
  ) : super(GetProductsInitial()) {
    on<DoGetProductsEvent>((event, emit) async {
      emit(GetProductsLoading());
      final result = await datasource.getAllProduct();
      result.fold(
        (l) => emit(GetProductsError(hasil: l)),
        (r) => emit(GetProductsLoaded(data: r)),
      );
    });
  }
}
