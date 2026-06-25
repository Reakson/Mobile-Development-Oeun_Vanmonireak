// // ---------------------------------------------
// // Create a new stateless widget : GroceryTile
// // ---------------------------------------------

// // The widget shall take as required parameter a Grocery

// // 	Use a ListTile widget to layout the elements

// // https://api.flutter.dev/flutter/material/ListTile-class.html

// import 'package:flutter/material.dart';
// import '../../../models/grocery.dart';

// class GroceryItemTile extends StatelessWidget {
//   const GroceryItemTile({super.key, required this.item});

//   final GroceryItem item;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(item.name),
//       subtitle: Text(item.quantity.toString()),
//       leading: Container(
//         width: 15,
//         height: 15,
//         color: item.category.color,
//       ),
//     );
//   }
// }
