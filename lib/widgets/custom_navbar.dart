import 'package:flutter/material.dart';
import '../pages/dashboard_page.dart';
import '../pages/book_list_page.dart' as book;
import '../pages/loan_page.dart';
import '../pages/return_history_page.dart' as history;

class CustomNavbar extends StatelessWidget {
  final int currentIndex;

  const CustomNavbar({super.key, required this.currentIndex});

  void _onTap(BuildContext context, int index) {
    if (index == currentIndex) return;

    late Widget targetPage;

    switch (index) {
      case 0:
        targetPage = BookListPage(); // Tanpa const
        break;
      case 1:
        targetPage = const DashboardPage(); // Boleh const kalau class-nya pakai const
        break;
      case 2:
        targetPage = LoanPage(); // Tanpa const
        break;
      case 3:
        targetPage = ReturnHistoryPage(); // Tanpa const
        break;
      default:
        return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => targetPage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => _onTap(context, index),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'List Buku',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: 'Peminjaman',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'Riwayat',
        ),
      ],
    );
  }
}
