import 'package:flutter/material.dart';
// import 'package:tyamo/views/Auth/register.dart';
import 'package:tyamo/views/Auth/login.dart';


void main() {
  runApp(const Tyamo());
}

class Tyamo extends StatelessWidget {
  const Tyamo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Tyamo ',
  
      // home: Register(),
        home: Login(),

    );
  }
}

