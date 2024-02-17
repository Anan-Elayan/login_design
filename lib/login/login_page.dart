import 'package:flutter/material.dart';
import 'package:login_design/login/components/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 1, 42, 30),
              Color.fromARGB(255, 64, 158, 130),
              Color.fromARGB(255, 64, 158, 130),
              Color.fromARGB(255, 147, 203, 188),
              Color.fromARGB(255, 185, 233, 219),
              Color.fromARGB(255, 216, 235, 230),
            ],
          ),
        ),
        child: Column(
          children: [
            const Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(100),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 149, 210, 191).withOpacity(0.5),
                          Color.fromARGB(255, 103, 177, 155).withOpacity(0.6),
                          Colors.white,
                          Colors.white,
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40, left: 40),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                      ),
                      color: Color.fromARGB(255, 204, 239, 227),
                    ),
                    child: const LoginForm(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
