import 'package:appfotoscat/descripcion.dart';

import 'package:flutter/material.dart';
import "package:appfotoscat/colores.dart";
import 'package:appfotoscat/json/canciones_json.dart';
import 'package:page_transition/page_transition.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int menu_activo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blanco,
      //  bottomNavigationBar: spotFooter(),
      body: spotBody(),
    );
  }

  Widget spotBody() {
    return IndexedStack(index: menu_activo, children: [
      Column(
        children: [
          SizedBox(
            height: 10,
          ),
          topmenubar(),
          // Text("catewgoria 1"),
          SizedBox(
            height: 20,
          ),
          cat1body(),
        ],
      ),
      Column(
        children: [
          SizedBox(
            height: 10,
          ),
          topmenubar(),
          // Text("catewgoria 1"),
          SizedBox(
            height: 20,
          ),
          cat2body(),
        ],
      ),
      Column(
        children: [
          SizedBox(
            height: 10,
          ),
          topmenubar(),
          // Text("catewgoria 1"),
          SizedBox(
            height: 20,
          ),
          cat3body(),
        ],
      ),
      Column(
        children: [
          topmenubar(),
          Text("catewgoria 4"),
        ],
      ),
      Column(
        children: [
          topmenubar(),
          Text("catewgoria 5"),
        ],
      ),
    ]);
  }

  Widget topmenubar() {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Row(
              children: List.generate(song_type_1.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        menu_activo = index;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          song_type_1[index],
                          style: TextStyle(
                              fontSize: 15,
                              color: menu_activo == index ? primario : gris,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 3),
                        menu_activo == index ? Container() : Container(),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }

  Widget cat3body() {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: List.generate(peces.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      //cambio de wiget top
                      Navigator.push(
                          context,
                          PageTransition(
                              alignment: Alignment.bottomCenter,
                              child: descripcion(
                                canciones: peces[index],
                              ),
                              type: PageTransitionType.scale));
                      //fin cambio de widget top
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(peces[index]['img']),
                                  fit: BoxFit.cover),
                              color: primario,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          peces[index]['title'],
                          style: TextStyle(
                              color: negro,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 180,
                          child: Text(
                            peces[index]['description'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: negro,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }

  Widget cat2body() {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: List.generate(aves.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      //cambio de wiget top
                      Navigator.push(
                          context,
                          PageTransition(
                              alignment: Alignment.bottomCenter,
                              child: descripcion(
                                canciones: aves[index],
                              ),
                              type: PageTransitionType.scale));
                      //fin cambio de widget top
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(aves[index]['img']),
                                  fit: BoxFit.cover),
                              color: primario,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          aves[index]['title'],
                          style: TextStyle(
                              color: negro,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 180,
                          child: Text(
                            aves[index]['description'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: negro,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }

  Widget cat1body() {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: List.generate(felinos.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      //cambio de wiget top
                      Navigator.push(
                          context,
                          PageTransition(
                              alignment: Alignment.bottomCenter,
                              child: descripcion(
                                canciones: felinos[index],
                              ),
                              type: PageTransitionType.scale));
                      //fin cambio de widget top
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(felinos[index]['img']),
                                  fit: BoxFit.cover),
                              color: primario,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          felinos[index]['title'],
                          style: TextStyle(
                              color: negro,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 180,
                          child: Text(
                            felinos[index]['description'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: negro,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
