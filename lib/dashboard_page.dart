import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard Rahul"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text("Halo, Rahul 👋", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Image.asset('assets/banner.png', height: 150, fit: BoxFit.cover),
            const SizedBox(height: 20),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _menuItem(context, Icons.person, "Profil", '/profile'),
                _menuItem(context, Icons.list, "Data", null),
                _menuItem(context, Icons.settings, "Pengaturan", null),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuItem(
    BuildContext context,
    IconData icon,
    String label,
    String? route,
  ) {
    return GestureDetector(
      onTap: route != null ? () => Navigator.pushNamed(context, route) : null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.indigo, size: 40),
          const SizedBox(height: 5),
          Text(label),
        ],
      ),
    );
  }
}
