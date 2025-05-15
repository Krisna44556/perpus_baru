import 'package:flutter/material.dart';

class BorrowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pinjam Buku')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Buku berhasil dipinjam!')),
            );
          },
          child: Text('Pinjam Buku Sekarang'),
        ),
      ),
    );
  }
}
