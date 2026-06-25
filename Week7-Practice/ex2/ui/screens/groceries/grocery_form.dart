// // ---------------------------------------------
// // Create a new statefull widget : GroceryForm
// // ---------------------------------------------

// // The form shall be composed of 2 text fields:
// // -	Name of the grocery item
// //-	Quantity (number only)

// // ⚠️  For now we don’t select the grocery type, we assume it’s always food

// // The form shall be composed of 2 buttons:
// //-	Cancel button
// // -	Add item button

// import 'package:flutter/material.dart';

// import '../../../models/grocery.dart';

// class GroceryItemForm extends StatefulWidget {
//   const GroceryItemForm({super.key});

//   @override
//   State<GroceryItemForm> createState() => _GroceryItemFormState();
// }

// class _GroceryItemFormState extends State<GroceryItemForm> {
//   String _name = '';
//   int _quantity = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Add a new item')),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(
//               decoration: const InputDecoration(labelText: 'Name'),
//               onChanged: (value) {
//                 setState(() {
//                   _name = value;
//                 });
//               },
//             ),

//             TextField(
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(labelText: 'Quantity'),
//               onChanged: (value) {
//                 setState(() {
//                   final parsed = int.tryParse(value);
//                   if (parsed != null) {
//                     _quantity = parsed;
//                   }
//                 });
//               },
//             ),

//             SizedBox(height: 20),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text('Cancel'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     final newItem = GroceryItem(
//                       id: DateTime.now().toString(),
//                       name: _name,
//                       quantity: _quantity,
//                       category: GroceryCategory.other,
//                     );
//                     Navigator.pop(context, newItem);
//                   },
//                   child: const Text('Add Item'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
