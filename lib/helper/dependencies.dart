import 'package:digikala/controllers/amazing_offer_products_controller.dart';
import 'package:digikala/data/api/api_client.dart';
import 'package:digikala/data/repository/amazing_offer_products_repo.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: ""));
  //repo
  Get.lazyPut(() => AmazingOfferProductsRepo(apiClient: Get.find()));
  //controllers
  Get.lazyPut(() =>
      AmazingOfferProductsController(amazingOfferProductsRepo: Get.find()));
}
