import 'package:get/get.dart';

class HomeController extends GetxController {
  //   int count = 0;
  //   void increaseCount() {
  //       count++;
  //       update();
  //  }
  List listToShow = [];

  List productNames = [
    "orange",
    "banana",
    "grapes",
    "pineapple",
    "apple",
    "oran",
  ];

  findProduct(query) {
    if (query.isNotEmpty)
      listToShow =
          productNames
              .where((e) => e.contains(query) && e.startsWith(query))
              .toList();
    else
      listToShow = [];
    update();
  }

  List product = [
    {"name": "apple", "price": 320, "id": 0},
    {"name": "orange", "price": 20, "id": 1},
    {"name": "banana", "price": 720, "id": 2},
    {"name": "grapes", "price": 300, "id": 3},
  ];
  List cart = [];

  addRemovetoCart(int i) {
    if (cart.contains(product[i])) {
      cart.remove(product[i]);
    } else {
      product[i]["quantity"] = 1;
      cart.add(product[i]);
    }
    print(cart.contains(product[i]));
    print("this is cart ${cart}");
    update();
  }

  carticreasquant(int i) {
    cart[i]["quantity"]++;
    update();
  }

  cartdecreasquant(int i) {
    cart[i]["quantity"]--;
    update();
  }
}
