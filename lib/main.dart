// import 'dart:js';

import 'package:flutter/material.dart';
// import 'login_page.dart';

void main() => runApp(MyApp());

void _logout() {}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LoginPage(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(200, 211, 216, 228),
          title: Image.asset(
            'images/appbar_logo.png', 
            fit: BoxFit.cover
            ),
            actions: <Widget>[
              IconButton(
                tooltip: "You will be logged out.",
                color: Colors.black,
                icon: Icon(Icons.logout),
                onPressed: () =>{}, 
                )
            ],
        ),
      ),
    );
  }

  
}
