import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class descripcion extends StatelessWidget {
  descripcion({Key? key, this.canciones}) : super(key: key);
  final dynamic canciones;

  @override
  Widget build(BuildContext context) {
    final AudioPlayer _player = AudioPlayer();

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(canciones['title'])),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                height: 250,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(canciones['img']),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(children: [
                  Text("Nombre : " + canciones['title']),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Descripción : " + canciones['description'],
                  ),
                ]),
              ),
              Container(
                height: 200,
                child: Column(
                  children: [
                    Text("Este animal emite el siguiente sonido: "),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          canciones['song_count'],
                        ),
                        IconButton(
                            onPressed: () async {
                              await _player.setAsset(canciones["song_url"]);
                              await _player.play();
                            },
                            icon: Icon(Icons.play_arrow)),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                            onPressed: () async {
                              // await _player.setAsset(canciones["song_url"]);
                              await _player.stop();
                            },
                            icon: Icon(Icons.stop_circle))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
