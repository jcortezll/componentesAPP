import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cards')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1(),
          const SizedBox(),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el título de esta tarjeta'),
            subtitle: Text(
                'Esta es una prueba para ver lo que ocurre con una tarjeta que tiene un subtitle bastante largo y que no sabemos como responderá'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(child: const Text('Cancelar'), onPressed: () {}),
              TextButton(child: const Text('Ok'), onPressed: () {})
            ],
          )
        ],
      ),
    );
  }
}

Widget _cardTipo2() {
  return Card(
    child: Column(
      children: [
        const FadeInImage(
          image: NetworkImage(
              'https://thumbs.gfycat.com/MemorableBetterCockroach-size_restricted.gif'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 10),
          height: 250,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text('Esta es la prueba de que funciona la imagen'),
        )
      ],
    ),
  );
}
