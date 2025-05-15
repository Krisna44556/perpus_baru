import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name = 'Hadi';
  final String email = 'hadi@example.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil Saya')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 100),
            SizedBox(height: 16),
            Text('Nama: $name'),
            Text('Email: $email'),
          ],
        ),
      ),
    );
  }
}
