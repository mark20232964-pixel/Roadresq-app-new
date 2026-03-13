// lib/screens/common/auth_screen.dart
// Handles login/signup for a given role (provider or driver)

import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  final String role;

  const AuthScreen({super.key, required this.role});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1117),
      appBar: AppBar(
        title: Text(role == 'provider' ? 'Service Provider' : 'Driver'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login / Sign Up for ${role == 'provider' ? 'Provider' : 'Driver'}',
              style: const TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 40),

            // Temporary Skip button (we'll replace with real login later)
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Skipped to dashboard – coming soon'),
                  ),
                );
              },
              child: const Text('Skip Login - Go to Dashboard (Test Mode)'),
            ),
          ],
        ),
      ),
    );
  }
}
