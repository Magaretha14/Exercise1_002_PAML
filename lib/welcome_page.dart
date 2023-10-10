import 'package:exercise1_002/login_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage(
      {super.key}); // Konstruktor WelcomePage dengan parameter key.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.white, // Mengatur latar belakang Scaffold menjadi putih.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 80),
              child: const Text(
                "Pokedex.",
                style: TextStyle(
                    color: Colors
                        .amber, // Mengatur warna teks menjadi amber (kuning-oranye).
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 50),
              child: const Text(
                "Welcome to Pokedex \n You can find your favorite pokemom here",
                style: TextStyle(
                    color: Colors.grey), // Mengatur warna teks menjadi abu-abu.
                textAlign: TextAlign
                    .center, // Mengatur teks agar berada di tengah secara horizontal.
              ),
            ),
            Container(
              padding: const EdgeInsets.all(130),
              alignment: Alignment.center,
              child: Image.network(
                "https://th.bing.com/th/id/OIP.ueqdIuJb_z6afkwjy1e2igHaHX?w=205&h=204&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                width: 200,
                height: 200,
              ), // Menampilkan gambar dari URL yang diberikan.
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          LoginPage(), // Mengarahkan ke halaman LoginPage saat tombol ditekan.
                    ),
                  );
                },
                backgroundColor: Colors
                    .amber, // Mengatur warna latar belakang tombol menjadi amber.
                child: const Icon(
                  Icons
                      .arrow_forward, // Menampilkan ikon panah ke depan di dalam tombol.
                  color: Colors.white, // Mengatur warna ikon menjadi putih.
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
