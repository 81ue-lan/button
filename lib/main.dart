import 'package:flutter/material.dart';
import 'package:button/app_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'snackbar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}



// snackbar Demo

// void main() => runApp(const SnackBarDemo());
//
// class SnackBarDemo extends StatelessWidget {
//   const SnackBarDemo({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'SnackBar Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('SnackBar Demo'),
//         ),
//         body: const SnackBarPage(),
//       ),
//     );
//   }
// }

// class SnackBarPage extends StatelessWidget {
//   const SnackBarPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () {
//           final snackBar = SnackBar(
//             content: const Text('你按下ElevatedButton'),
//             action: SnackBarAction(
//               label: 'Toast訊息',
//               onPressed: () {
//                 // Some code to undo the change.
//               },
//             ),
//           );
//
//           // Find the ScaffoldMessenger in the widget tree
//           // and use it to show a SnackBar.
//           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//         },
//         child: const Text('ElevatedButton'),
//       ),
//
//     );
//   }
// }