// import 'package:flutter/material.dart';

// class HobbyCard extends StatelessWidget {
//   const HobbyCard({
//     super.key,
//     required this.hobbyTitle,
//     required this.hobbyIcon,
//     this.cardBackground = Colors.blue,
//   });

//   final String hobbyTitle;
//   final IconData hobbyIcon;
//   final Color cardBackground;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 80,
//       decoration: BoxDecoration(
//         color: cardBackground,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           SizedBox(width: 30),

//           Icon(hobbyIcon, color: Colors.white),

//           SizedBox(width: 20),

//           Text(hobbyTitle, style: TextStyle(color: Colors.white, fontSize: 20)),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text("My Hobbies")),
//         backgroundColor: Colors.blue[50],
//         body: Padding(
//           padding: EdgeInsets.all(40),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               HobbyCard(
//                 hobbyTitle: "Travelling",
//                 hobbyIcon: Icons.travel_explore,
//               ),
//               SizedBox(height: 10),
//               HobbyCard(
//                 hobbyTitle: "Reading",
//                 hobbyIcon: Icons.book,
//                 cardBackground: Colors.lightBlueAccent,
//               ),
//               SizedBox(height: 10),
//               HobbyCard(
//                 hobbyTitle: "Swimming",
//                 hobbyIcon: Icons.pool,
//                 cardBackground: Colors.blueAccent,
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
