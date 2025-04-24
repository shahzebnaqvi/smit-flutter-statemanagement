import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List product = [
    {"name": "apple", "price": 320, "id": 0},
    {"name": "orange", "price": 20, "id": 1},
    {"name": "banana", "price": 720, "id": 2},
    {"name": "grapes", "price": 300, "id": 3},
  ];

  List cart = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: product.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text(product[i]["name"]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (cart.contains(product[i])) {
                              cart.remove(product[i]);
                            } else {
                              product[i]["quantity"] = 1;
                              cart.add(product[i]);
                            }
                            print(cart.contains(product[i]));
                            print("this is cart ${cart}");
                          });
                        },
                        icon: Icon(
                          cart.contains(product[i])
                              ? Icons.shopping_basket
                              : Icons.shopping_basket_outlined,
                        ),
                      ),
                      // IconButton(
                      //   onPressed: () {
                      //     setState(() {
                      //       cart.contains(product[i]);
                      //       cart.add(product[i]);
                      //       print(cart );
                      //       print(cart.contains(product[i]));
                      //     });
                      //   },
                      //   icon: Icon(Icons.add),
                      // ),
                      // IconButton(
                      //   onPressed: () {    setState(() {                            print(cart.contains(product[i]));

                      //     cart.remove(product[i]);
                      //       print(cart);
                      //     });
                      //   },
                      //   icon: Icon(Icons.minimize_outlined),
                      // ),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text(cart[i]["name"]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            cart[i]["quantity"]++;
                          });
                        },
                        icon: Icon(Icons.add),
                      ),
                      Text(cart[i]["quantity"].toString()),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            cart[i]["quantity"]--;
                          });
                        },
                        icon: Icon(Icons.minimize_outlined),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
