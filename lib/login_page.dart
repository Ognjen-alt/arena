import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(200, 211, 216, 228),
//       body: SafeArea (
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//                 Image.asset(
//             'images/appbar_logo.png', 
//             fit: BoxFit.cover
//             ),
//                 ),

//                 SizedBox(height: 50),
//                 // imejl

//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 25.0
//                     ),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.grey,
//                       border: Border.all(color: Colors.white)
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 25.0),
//                       child: TextField(
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: "E-mail",
//                           ),
//                       ),
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 10),
                
//                 // Šifra

//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 25.0
//                     ),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.grey,
//                       border: Border.all(color: Colors.white)
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 25.0),
//                       child: TextField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: "Password",
//                           ),
//                       ),
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 10),

//                 // Dugme za prijavu
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Container(
//                     padding: EdgeInsets.all(25),
//                     decoration: BoxDecoration(
//                       color: Colors.greenAccent,

//                       ),
//                       child: Center(child: Text("Log In")
//                       ),
//                   ),
//                 )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }