// import 'package:flutter/material.dart';

// class FavoriteCard extends StatelessWidget {
//   final bool isFavorite;

//   const FavoriteCard({super.key, required this.isFavorite});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         border: Border(bottom: BorderSide(color: Colors.grey)),
//       ),
//       padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Expanded(
//             flex: 7,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   "title",
//                   style: TextStyle(
//                     color: Colors.blue,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 const Text("description"),
//               ],
//             ),
//           ),
//           IconButton(
//             onPressed: () => {},
//             icon: Icon(
//               isFavorite ? Icons.favorite : Icons.favorite_border,
//               color: isFavorite ? Colors.red : Colors.grey),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() => runApp(
//   MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text("Favorite cards"),
//       ),
//       body: Column(children: [
//           FavoriteCard(isFavorite: true),
//           FavoriteCard(isFavorite: false),
//           FavoriteCard(isFavorite: true)
//         ],
//       ),
//     ),
//   ),
// );
