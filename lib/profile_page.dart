import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profil Rahul")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/avatar.png'),
            ),
            const SizedBox(height: 15),
            const Text(
              "Rahul Candra",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text("NPM: 23670019"),
            const Text("Email: rahul@example.com"),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.school, color: Colors.indigo),
                SizedBox(width: 5),
                Text("Prodi: Informatika - Semester 5"),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
              label: const Text("Kembali ke Dashboard"),
            ),
          ],
        ),
      ),
    );
  }
}
