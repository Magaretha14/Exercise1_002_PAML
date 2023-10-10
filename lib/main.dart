import 'package:exercise1_002/homepage.dart';
import 'package:exercise1_002/welcome_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(const MyApp()); // Memulai aplikasi dengan menjalankan MyApp.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Konstruktor MyApp dengan parameter key.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Menyembunyikan banner debug di sudut kanan atas.
      theme: ThemeData(
        primarySwatch: Colors.blue, // Mengatur tema dengan warna utama biru.
      ),
      home:
          const WelcomePage(), // Mengatur halaman awal aplikasi sebagai WelcomePage.
    );
  }
}
