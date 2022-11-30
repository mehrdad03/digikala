import 'package:digikala/data/api/api_client.dart';
import 'package:get/get.dart';

class AmazingOfferProductsRepo extends GetxService {
  final ApiClient apiClient; //create instance

  AmazingOfferProductsRepo({required this.apiClient});

  Future<Response> getAmazingProducts() async {
    return await apiClient.getDate("end point url");
  }
}
