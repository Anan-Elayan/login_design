import 'package:flutter/material.dart';
import 'package:login_design/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login Screen',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
