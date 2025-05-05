import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smit_flutter_statemanagement/controllers/home_controller.dart';
import 'package:smit_flutter_statemanagement/utils/color_constraints.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  HomeController homeControl = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(child: Obx(()=> Text("${homeControl.count.value}"))),
      body: Center(
        child: GetX<HomeController>(
          init: homeControl.increaseCount(),
          dispose: homeControl.increaseCount(),
          builder: (context) => Text("${homeControl.count.value}"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homeControl.increaseCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
// class HomeView extends StatelessWidget {
//   HomeView({super.key});

//   HomeController homeControll = Get.put(HomeController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GetBuilder<HomeController>(
//         builder: (context) {
//           return Column(
//             children: [
//               TextField(onChanged: (value) => homeControll.findProduct(value),),
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: homeControll.listToShow.length,
//                   itemBuilder: (context, i) {
//                  return   Container(child: Text(homeControll.listToShow[i],style: TextStyle(color: Colors.red),));
//                   },
//                 ),
//               ),

//               // Expanded(
//               //   child: ListView.builder(
//               //     itemCount: homeControll.product.length,
//               //     itemBuilder: (context, i) {
//               //       return ListTile(
//               //         title: Text(homeControll.product[i]["name"]),
//               //         trailing: Row(
//               //           mainAxisSize: MainAxisSize.min,
//               //           children: [
//               //             IconButton(
//               //               onPressed: () {
//               //                 // setState(() {
//               //                 homeControll.addRemovetoCart(i);
//               //                 // });
//               //               },
//               //               icon: Icon(
//               //                 homeControll.cart.contains(
//               //                       homeControll.product[i],
//               //                     )
//               //                     ? Icons.shopping_basket
//               //                     : Icons.shopping_basket_outlined,
//               //               ),
//               //             ),
//               //             // IconButton(
//               //             //   onPressed: () {
//               //             //     setState(() {
//               //             //       cart.contains(product[i]);
//               //             //       cart.add(product[i]);
//               //             //       print(cart );
//               //             //       print(cart.contains(product[i]));
//               //             //     });
//               //             //   },
//               //             //   icon: Icon(Icons.add),
//               //             // ),
//               //             // IconButton(
//               //             //   onPressed: () {    setState(() {                            print(cart.contains(product[i]));

//               //             //     cart.remove(product[i]);
//               //             //       print(cart);
//               //             //     });
//               //             //   },
//               //             //   icon: Icon(Icons.minimize_outlined),
//               //             // ),
//               //           ],
//               //         ),
//               //       );
//               //     },
//               //   ),
//               // ),
//               // Expanded(
//               //   child: ListView.builder(
//               //     itemCount: homeControll.cart.length,
//               //     itemBuilder: (context, i) {
//               //       return ListTile(
//               //         title: Text(homeControll.cart[i]["name"]),
//               //         trailing: Row(
//               //           mainAxisSize: MainAxisSize.min,
//               //           children: [
//               //             IconButton(
//               //               onPressed: () {
//               //                 // setState(() {
//               //                 // });
//               //                 homeControll.carticreasquant(i);
//               //               },
//               //               icon: Icon(Icons.add),
//               //             ),
//               //             Text(homeControll.cart[i]["quantity"].toString()),
//               //             IconButton(
//               //               onPressed: () {
//               //                 homeControll.cartdecreasquant(i);
//               //                 // setState(() {
//               //                 // });
//               //               },
//               //               icon: Icon(Icons.minimize_outlined),
//               //             ),
//               //           ],
//               //         ),
//               //       );
//               //     },
//               //   ),
//               // ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

// class HomeView extends StatelessWidget {
//    HomeView({super.key});
// HomeController homeControl = Get.put(HomeController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GetBuilder<HomeController>(
//         builder: (context) {
//           return Center(
//             child: Text(
//               "${homeControl.count}",
//               style: TextStyle(color: ColorConstraints.primaryColor, fontSize: 100),
//             ),
//           );
//         }
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           homeControl.increaseCount();
//         },
//       ),
//     );
//   }
// }

// class HomeView extends StatefulWidget {
//   const HomeView({super.key});

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   int count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text("$count",style: TextStyle(color: ColorConstraints.primaryColor,fontSize: 100))),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             count++;
//           });
//         },
//       ),
//     );
//   }
// }
// class HomeView extends StatefulWidget {
//   HomeView({super.key});

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   List product = [
//     {"name": "apple", "price": 320, "id": 0},
//     {"name": "orange", "price": 20, "id": 1},
//     {"name": "banana", "price": 720, "id": 2},
//     {"name": "grapes", "price": 300, "id": 3},
//   ];

//   List cart = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: product.length,
//               itemBuilder: (context, i) {
//                 return ListTile(
//                   title: Text(product[i]["name"]),
//                   trailing: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       IconButton(
//                         onPressed: () {
//                           setState(() {
//                             if (cart.contains(product[i])) {
//                               cart.remove(product[i]);
//                             } else {
//                               product[i]["quantity"] = 1;
//                               cart.add(product[i]);
//                             }
//                             print(cart.contains(product[i]));
//                             print("this is cart ${cart}");
//                           });
//                         },
//                         icon: Icon(
//                           cart.contains(product[i])
//                               ? Icons.shopping_basket
//                               : Icons.shopping_basket_outlined,
//                         ),
//                       ),
//                       // IconButton(
//                       //   onPressed: () {
//                       //     setState(() {
//                       //       cart.contains(product[i]);
//                       //       cart.add(product[i]);
//                       //       print(cart );
//                       //       print(cart.contains(product[i]));
//                       //     });
//                       //   },
//                       //   icon: Icon(Icons.add),
//                       // ),
//                       // IconButton(
//                       //   onPressed: () {    setState(() {                            print(cart.contains(product[i]));

//                       //     cart.remove(product[i]);
//                       //       print(cart);
//                       //     });
//                       //   },
//                       //   icon: Icon(Icons.minimize_outlined),
//                       // ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: cart.length,
//               itemBuilder: (context, i) {
//                 return ListTile(
//                   title: Text(cart[i]["name"]),
//                   trailing: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       IconButton(
//                         onPressed: () {
//                           setState(() {
//                             cart[i]["quantity"]++;
//                           });
//                         },
//                         icon: Icon(Icons.add),
//                       ),
//                       Text(cart[i]["quantity"].toString()),
//                       IconButton(
//                         onPressed: () {
//                           setState(() {
//                             cart[i]["quantity"]--;
//                           });
//                         },
//                         icon: Icon(Icons.minimize_outlined),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
