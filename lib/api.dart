import 'package:flutter/material.dart';
import 'package:h1zen/views/album_view.dart';

void main() {
  runApp(const ApiRenk());
}

class ApiRenk extends StatelessWidget {
  const ApiRenk({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: AlbumsView(),
    );
  }
}

