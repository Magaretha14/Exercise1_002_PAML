import 'package:exercise1_002/login_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 80),
              child: const Text(
                "Pokedex.",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 50),
              child: const Text(
                "Welcome to Pokedex \n You can find your favorite pokemom here",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(130),
              alignment: Alignment.center,
              child: Image.network(
                "https://th.bing.com/th/id/OIP.ueqdIuJb_z6afkwjy1e2igHaHX?w=205&h=204&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                width: 200,
                height: 200,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                backgroundColor: Colors.amber,
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
