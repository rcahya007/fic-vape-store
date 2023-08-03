import 'package:dartz/dartz.dart';
import 'package:vape_store/common/global_data.dart';
import 'package:vape_store/data/models/list_product_response_model.dart';
import 'package:http/http.dart' as http;

class ProductVapeDatasource {
  Future<Either<String, ListProductResponseModel>> getAllProduct() async {
    final response = await http.get(
      Uri.parse('$urlBase/api/products?populate=*'),
    );

    if (response.statusCode == 200) {
      return Right(
        ListProductResponseModel.fromRawJson(response.body),
      );
    } else {
      return Left(response.statusCode.toString());
    }
  }
}
