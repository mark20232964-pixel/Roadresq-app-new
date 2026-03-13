// lib/screens/provider/our_services_screen.dart

import 'package:flutter/material.dart';

class OurServicesScreen extends StatelessWidget {
  const OurServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Our Services'),
        backgroundColor: const Color(0xFF1B1B4B),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: () {
                // Temporary: snackbar (we'll open dialog in next step)
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Add new service tapped')),
                );
              },
              icon: const Icon(Icons.add),
              label: const Text("Add New Service"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6A48FF),
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 56),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
            const SizedBox(height: 24),

            // Placeholder for service list (coming next)
            const Expanded(
              child: Center(
                child: Text(
                  'No services yet. Tap Add New Service to start.',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
