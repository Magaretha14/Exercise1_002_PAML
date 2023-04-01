import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    this.name,
  });

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 50, left: 20),
                  child: RichText(
                    text: TextSpan(
                      text: 'Hallo, ',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: '$name',
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50, left: 200),
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.lightBlue,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/058.png'),
                    ),
                  ),
                )
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                "Pokedex",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 14.0),
                    hintText: 'Search Pokemon',
                    hintStyle: const TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.normal),
                    prefixIcon: const Icon(Icons.search)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(left: 20, right: 20),
              width: 400,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 7,
                    spreadRadius: 5,
                    offset: const Offset(0, 3),
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.lightBlue,
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://assets.pokemon.com/assets/cms2/img/pokedex/full/058.png'),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(children: [
                      SizedBox(
                        width: 250,
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 5),
                              child: const Text(
                                '#001',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              child: const Text(
                                'Bulbasur',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 18,
                        child: Row(
                          children: [
                            Container(
                              width: 35,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.orange),
                              padding: const EdgeInsets.only(left: 5),
                              child: const Text(
                                'Fire',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 250,
                        child: Text(
                          'It has a brave and trustworthy nature. It fearlessly stands up to bigger and stronger foes.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
