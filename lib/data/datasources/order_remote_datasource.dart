import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:vape_store/common/global_data.dart';
import 'package:vape_store/data/datasources/auth_local_datasource.dart';
import 'package:vape_store/data/models/request/order_request_model.dart';
import 'package:vape_store/data/models/responses/order_response_model.dart';

class OrderRemoteDatasource {
  Future<Either<String, OrderResponseModel>> order(
      OrderRequestModel requestModel) async {
    final tokenJwt = await AuthLocalDatasource().getToken();
    final response = await http.post(
      Uri.parse('$urlBase/api/orders'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $tokenJwt',
      },
      body: requestModel.toRawJson(),
    );

    if (response.statusCode == 200) {
      return Right(OrderResponseModel.fromJson(response.body));
    } else {
      return const Left('Server Error');
    }
  }
}
