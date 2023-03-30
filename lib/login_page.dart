import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50),
              child: Image.network(
                "https://www.pngmart.com/files/22/Pokemon-Yellow-Logo-Transparent-PNG.png",
                width: 300,
                height: 200,
              ),
            ),
            Container(
              child: const Text(
                "Let's get started.",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: const Text(
                "There's No Sense In Going Out Of \n Your Way To Get Somebody To Like You.",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
