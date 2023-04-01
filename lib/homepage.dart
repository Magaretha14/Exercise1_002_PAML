import 'package:exercise1_002/pokemonlist.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    this.name,
  });

  final String? name;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: RichText(
                      text: TextSpan(
                        text: 'Hallo, ',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: '${widget.name}',
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
                    margin: const EdgeInsets.only(top: 30, left: 200),
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
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
              Column(
                children: const [
                  PokemonList(
                      gambar:
                          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/058.png',
                      nomor: '#058',
                      nama_pokemon: 'Growlithe',
                      deskripsi:
                          'It has a brave and trustworthy nature. It fearlessly stands up to bigger and stronger foes.'),
                  PokemonList(
                      gambar:
                          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png',
                      nomor: '003',
                      nama_pokemon: 'Charmander',
                      deskripsi:
                          'It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.'),
                  PokemonList(
                      gambar:
                          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/037.png',
                      nomor: '037',
                      nama_pokemon: 'Vulpix',
                      deskripsi:
                          'While young, it has six gorgeous tails. When it grows, several new tails are sprouted.'),
                  PokemonList(
                      gambar:
                          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/059.png',
                      nomor: '059',
                      nama_pokemon: 'Arcanine',
                      deskripsi:
                          'An ancient picture scroll shows that people were captivated by its movement as it ran through prairies.')
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
