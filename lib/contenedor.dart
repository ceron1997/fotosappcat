import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:appfotoscat/colores.dart';
import 'Home.dart';

class Contenedores extends StatefulWidget {
  Contenedores({Key? key}) : super(key: key);

  @override
  State<Contenedores> createState() => _ContenedoresState();
}

class _ContenedoresState extends State<Contenedores> {
  int menu_activo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blanco,
      bottomNavigationBar: spotFooter(),
      body: spotBody(),
    );
  }

  Widget spotBody() {
    return IndexedStack(index: menu_activo, children: [
      home(),
      Center(
        child: Text(
          "Busqueda",
          style: TextStyle(
              fontSize: 20, color: negro, fontWeight: FontWeight.bold),
        ),
      ),
      Center(
        child: Text(
          "Mis favoritos",
          style: TextStyle(
              fontSize: 20, color: negro, fontWeight: FontWeight.bold),
        ),
      ),
      Center(
        child: Text(
          "Mi Perfil ",
          style: TextStyle(
              fontSize: 20, color: negro, fontWeight: FontWeight.bold),
        ),
      ),
    ]);
  }

  Widget spotFooter() {
    List items = [
      FeatherIcons.home,
      FeatherIcons.search,
      FeatherIcons.heart,
      FeatherIcons.user,
    ];

    return Container(
      height: 60,
      decoration: BoxDecoration(color: blanco),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(4, (index) {
            return IconButton(
                onPressed: () {
                  setState(() {
                    menu_activo = index;
                  });
                },
                icon: Icon(
                  items[index],
                  color: menu_activo == index ? azul : negro,
                ));
          }),
        ),
      ),
    );
  }
}
