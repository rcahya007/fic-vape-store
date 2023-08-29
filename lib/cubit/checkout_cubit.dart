import 'package:flutter_bloc/flutter_bloc.dart';

class DataCheckoutCubit extends Cubit<Map<String, dynamic>> {
  DataCheckoutCubit() : super({});

  void update(String item, dynamic quantity) {
    if (state.containsKey(item)) {
      return emit({...state, item: state[item] = quantity});
    } else {
      return emit({...state, item: quantity});
    }
  }
}
