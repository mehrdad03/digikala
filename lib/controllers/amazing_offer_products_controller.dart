import 'package:digikala/data/repository/amazing_offer_products_repo.dart';
import 'package:get/get.dart';

class AmazingOfferProductsController extends GetxController {
  final AmazingOfferProductsRepo amazingOfferProductsRepo;

  AmazingOfferProductsController({required this.amazingOfferProductsRepo});

  List<dynamic> _amazingOfferProductsList = [];

  List<dynamic> get amazingOfferProductsList => _amazingOfferProductsList;

  Future<void> getAmazingOfferProductsList() async {
    Response response = await amazingOfferProductsRepo.getAmazingProducts();
    if (response.status == 200) {
      _amazingOfferProductsList = [];
     // _amazingOfferProductsList.addAll();
      update(); //setState
    } else {

    }
  }
}
