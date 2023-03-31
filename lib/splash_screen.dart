//
// import 'dart:async';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'homePage.dart';
//
//
// class Splash extends StatefulWidget {
//   const Splash({super.key});
//
//   @override
//   State<Splash> createState() => _SplashState();
// }
//
// class _SplashState extends State<Splash> {
//   @override
//   void initState() {
//     super.initState();
//
//     Timer(
//       Duration(seconds: 5),
//           () => Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => HomePage(),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF2a4904),
//       body: Center(
//         child: Image.asset('asset/tmhci.png')
//       ),
//     );
//   }
// }
