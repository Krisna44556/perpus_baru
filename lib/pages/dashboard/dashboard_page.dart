import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  final List<Map<String, String>> books = [
{
'title': 'Pemrograman Dart',
'author': 'Budi Santoso',
'image':
'https://raw.githubusercontent.com/dicodingacademy/assets/main/flutter_dicoding/dart.png'
},
{
'title': 'Belajar Flutter',
'author': 'Ani Wijaya',
'image':
'https://raw.githubusercontent.com/dicodingacademy/assets/main/flutter_dicoding/flutter.png'
},
{
'title': 'Pemrograman Web',
'author': 'Siti Aminah',
'image':
'https://cdn-icons-png.flaticon.com/512/2306/2306154.png'
},
];

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Daftar Buku'),
    ),
    body: ListView.builder(
      itemCount: books.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        final book = books[index];

        return Card(
          elevation: 4,
          margin: const EdgeInsets.only(bottom: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    book['image']!,
                    width: 80,
                    height: 100,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.broken_image, size: 80),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        book['title']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text('Penulis: ${book['author']}'),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Pinjam ${book['title']}'),
                            ),
                          );
                        },
                        child: const Text('Pinjam'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}
}