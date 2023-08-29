import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vape_store/data/datasources/raja_ongkir_datasource.dart';
import 'package:vape_store/data/models/responses/kota_response_model.dart';

part 'get_kota_asal_event.dart';
part 'get_kota_asal_state.dart';

class GetKotaAsalBloc extends Bloc<GetKotaAsalEvent, GetKotaAsalState> {
  final RajaOngkirDatasource datasource;
  GetKotaAsalBloc(this.datasource) : super(GetKotaAsalInitial()) {
    on<DoGetKotaAsalEvent>((event, emit) async {
      emit(GetKotaAsalLoading());
      final result = await datasource.getKotaByProvinsi(event.id);
      result.fold(
        (l) => emit(GetKotaAsalError(error: l)),
        (r) => emit(GetKotaAsalLoaded(dataKota: r)),
      );
    });

    on<DoRemoveKotaAsalEvent>((event, emit) {
      emit(GetKotaAsalLoading());
    });
  }
}
