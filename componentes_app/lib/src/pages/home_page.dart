import 'package:flutter/material.dart';
import '../providers/menu_provider.dart';
import '../utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes')), 
      body: _lista());
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      //Argumento opcional, y será la información que tendrá por defecto mientras
      //no se haya resuelto la promesa
      // initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('builder');
        print(snapshot.data);
        //Crearemos el ListView
         // Check if snapshot.data is not null before using it.
        if (snapshot.hasData) {
          return ListView(
            children: _listaItems(snapshot.data!, context),
          );
        } else if (snapshot.hasError) {
          // If there is an error, return an error widget.
          return Text('Error: ${snapshot.error}');
        } else {
          // If the Future is still loading, return a loading spinner.
          return const CircularProgressIndicator();
        }
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    for (var opt in data) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones
        ..add(widgetTemp)
        ..add(const Divider());
    }
    return opciones;
  }

}
