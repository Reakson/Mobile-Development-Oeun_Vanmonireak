// import 'package:flutter/material.dart';

// class GreenScreen extends StatelessWidget {
//   const GreenScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.green,
//       child: Center(child: Text("Green Screen")),
//     );
//   }
// }

// class BlueScreen extends StatelessWidget {
//   const BlueScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue,
//       child: Center(child: Text("Blue Screen")),
//     );
//   }
// }

// class RedScreen extends StatelessWidget {
//   const RedScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//       child: Center(child: Text("Red Screen")),
//     );
//   }
// }

// enum AppTabs { red, green, blue }

// class App extends StatefulWidget {
//   const App({super.key});

//   @override
//   State<App> createState() => _AppState();
// }

// class _AppState extends State<App> {
//   AppTabs _currentTab = AppTabs.red;

//   Widget get content {
//     return switch (_currentTab) {
//       AppTabs.red => RedScreen(),
//       AppTabs.blue => BlueScreen(),
//       AppTabs.green => GreenScreen(),
//     };
//   }

//   void onTabSelected(AppTabs tab) {
//     setState(() {
//       _currentTab = tab;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Tabs navigation")),
//       body: content,
//       bottomNavigationBar: BottomAppBar(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             IconButton(
//               onPressed: () => onTabSelected(AppTabs.red), 
//               icon: Icon(Icons.home, color: Colors.red),
//             ),
//             IconButton(
//               onPressed: () => onTabSelected(AppTabs.blue),
//               icon: Icon(Icons.home, color: Colors.blue),
//             ),
//             IconButton(
//               onPressed: () => onTabSelected(AppTabs.green),
//               icon: Icon(Icons.home, color: Colors.green),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: App()));
// }
