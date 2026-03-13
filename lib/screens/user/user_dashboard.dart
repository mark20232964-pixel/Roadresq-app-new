// lib/screens/user/user_dashboard.dart

import 'package:flutter/material.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.white, // we'll change to match your original later
      body: const Center(
        child: Text(
          'User Dashboard - Step 1',
          style: TextStyle(fontSize: 28, color: Colors.black),
        ),
      ),
    );
  }
}
