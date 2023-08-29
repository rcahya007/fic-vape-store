import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vape_store/data/datasources/raja_ongkir_datasource.dart';
import 'package:vape_store/data/models/responses/kota_response_model.dart';

part 'get_kota_tujuan_event.dart';
part 'get_kota_tujuan_state.dart';

class GetKotaTujuanBloc extends Bloc<GetKotaTujuanEvent, GetKotaTujuanState> {
  final RajaOngkirDatasource datasource;
  GetKotaTujuanBloc(this.datasource) : super(GetKotaTujuanInitial()) {
    on<DoGetKotaTujuanEvent>((event, emit) async {
      emit(GetKotaTujuanLoading());
      final result = await datasource.getKotaByProvinsi(event.id);
      result.fold(
        (l) => emit(GetKotaTujuanError(error: l)),
        (r) => emit(GetKotaTujuanLoaded(dataKota: r)),
      );
    });
    on<DoRemoveKotaTujuanEvent>((event, emit) {
      emit(GetKotaTujuanLoading());
    });
  }
}
