// import 'package:flutter/material.dart';

// class SelectButton extends StatefulWidget {
//   const SelectButton({super.key});

//   @override
//   State<SelectButton> createState() {
//     return _SelectButtonState();
//   }
// }

// class _SelectButtonState extends State<SelectButton> {
//   bool isSelected = false;

//   String get textLabel => isSelected ? 'Selected' : 'Not Selected';
//   Color get textColor => isSelected ? Colors.white : Colors.black;
//   Color? get bgColor => isSelected ? Colors.blue[500] : Colors.blue[50];

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 400,
//       height: 100,
//       child: ElevatedButton(
//         onPressed: () {
//           setState(() {
//             isSelected = !isSelected;
//           });
//         },
//         style: ElevatedButton.styleFrom(
//           backgroundColor: bgColor
//         ),
//         child: Center(
//           child: Text(textLabel, style: TextStyle(color: textColor),),
          
//           ),
//       ),
//     );
//   }
// }

// void main() => runApp(
//   MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(title: const Text("Custom buttons")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             const SelectButton(),
//             const SelectButton(),
//             const SelectButton(),
//             const SelectButton(),
//             const SelectButton(),
//           ],
//         )
//         ),
//     ),
//   ),
// );