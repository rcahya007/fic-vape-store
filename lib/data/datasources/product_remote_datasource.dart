import 'package:dartz/dartz.dart';
import 'package:vape_store/common/global_data.dart';
import 'package:vape_store/data/models/responses/product_detail_response_model.dart';
import 'package:vape_store/data/models/responses/list_product_response_model.dart';
import 'package:http/http.dart' as http;

class ProductRemoteDatasource {
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

  Future<Either<String, ProductDetailResponseModel>> getDetailProduct(
      int id) async {
    final response = await http.get(
      Uri.parse('$urlBase/api/products/$id?populate=product_cover'),
    );

    if (response.statusCode == 200) {
      return Right(
        ProductDetailResponseModel.fromRawJson(response.body),
      );
    } else {
      return Left(response.statusCode.toString());
    }
  }

  Future<Either<String, ProductDetailResponseModel>> search(String name) async {
    final response = await http.get(
      Uri.parse('$urlBase/api/products?filter[roduct_name][\$contains]=$name'),
    );

    if (response.statusCode == 200) {
      return Right(
        ProductDetailResponseModel.fromRawJson(response.body),
      );
    } else {
      return Left(response.statusCode.toString());
    }
  }
}
