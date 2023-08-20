// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:vape_store/data/datasources/auth_remote_datasource.dart';
import 'package:vape_store/data/models/request/login_request_model.dart';
import 'package:vape_store/data/models/responses/auth_response_model.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDatasource datasource;
  LoginBloc(
    this.datasource,
  ) : super(LoginInitial()) {
    on<DoLoginEvent>(_loginEvent);
  }

  Future<void> _loginEvent(LoginEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    if (event is DoLoginEvent) {
      final result = await datasource.login(event.model);
      result.fold(
        (l) => emit(LoginError()),
        (r) => emit(LoginLoaded(model: r)),
      );
    }
  }
}
