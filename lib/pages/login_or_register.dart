import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart'; // Make sure you have this import for the register page

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  // Initially show login page
  bool showLoginPage = true;

  // Toggle between login and register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        onTap: togglePages, // toggle to register page
      );
    } else {
      return RegisterPage(
        onTap: togglePages, // toggle to login page
      );
    }
  }
}
