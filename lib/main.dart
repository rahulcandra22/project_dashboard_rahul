import 'package:flutter/material.dart';
import 'login_page.dart';
import 'dashboard_page.dart';
import 'profile_page.dart';

void main() {
  runApp(const ProjectDashboardRahul());
}

class ProjectDashboardRahul extends StatelessWidget {
  const ProjectDashboardRahul({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Dashboard Rahul',
      theme: ThemeData(primarySwatch: Colors.indigo),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
