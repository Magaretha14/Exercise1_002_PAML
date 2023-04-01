import 'package:flutter/material.dart';

class PokemonList extends StatelessWidget {
  const PokemonList(
      {super.key,
      required this.gambar,
      required this.nomor,
      required this.nama_pokemon,
      required this.deskripsi});

  final String gambar;
  final String nomor;
  final String nama_pokemon;
  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
                color: Colors.amber[600],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(gambar),
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
                        child: Text(
                          nomor,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ),
                      Container(
                        child: Text(
                          nama_pokemon,
                          style: const TextStyle(fontWeight: FontWeight.bold),
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
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: Text(
                    deskripsi,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(color: Colors.grey),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    ]);
  }
}
