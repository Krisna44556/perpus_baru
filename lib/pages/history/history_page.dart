import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  final List<Map<String, String>> history = [
    {'title': 'Pemrograman Dart', 'date': '2025-05-10'},
    {'title': 'Belajar Flutter', 'date': '2025-05-12'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Riwayat Peminjaman')),
      body: ListView.builder(
        itemCount: history.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.check_circle, color: Colors.green),
            title: Text(history[index]['title']!),
            subtitle: Text('Dipinjam pada: ${history[index]['date']}'),
          );
        },
      ),
    );
  }
}
