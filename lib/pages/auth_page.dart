import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Ensure FirebaseAuth is imported

import 'home_page.dart';
import 'login_or_register_page.dart'; // Import LoginOrRegisterPage

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // Check if the user is logged in
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(), // Show loading while waiting
            );
          } else if (snapshot.hasData) {
            // User is logged in
            return HomePage();
          } else {
            // User is NOT logged in
            return const LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
