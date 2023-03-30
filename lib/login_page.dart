import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: const Text(
                "There's No Sense In Going Out Of \n Your Way To Get Somebody To Like You.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 18),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Name",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              margin: const EdgeInsets.only(right: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(fontSize: 20),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Password",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              margin: const EdgeInsets.only(right: 20),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(fontSize: 20),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blue,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 100),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                    ),
                    minimumSize: const Size(350, 60)),
                child: const Text(
                  "Sign In",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
