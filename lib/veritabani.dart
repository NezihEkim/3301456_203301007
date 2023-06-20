import "package:flutter/material.dart";
import 'package:h1zen/services/db_utils.dart';
import 'package:h1zen/views/list_dogs.dart';
import 'package:sqflite/sqflite.dart';
import 'models/Dog.dart';

import 'dart:async';

import 'package:flutter/widgets.dart';


DbUtils utils = DbUtils();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Veritabani Islemleri',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const Veri(),
    );
  }
}

class Veri extends StatefulWidget {
  const Veri({super.key});


  @override
  State<Veri> createState() => _VeriState();
}

class _VeriState extends State<Veri> {
  TextEditingController kopekIdController = TextEditingController();
  TextEditingController kopekAdController = TextEditingController();
  TextEditingController kopekYasController = TextEditingController();

  late Future<Database> database;

  List<Dog> dogList = [];

  _onPressedUpdate() async {
    final enik = Dog(
      id: int.parse(kopekIdController.text),
      name: kopekAdController.text,
      age: int.parse(kopekYasController.text),
    );
    utils.updateDog(enik);
    dogList = await utils.dogs();
    //print(dogList);
    getData();
  }

  _onPressedAdd() async {
    final enik = Dog(
      id: int.parse(kopekIdController.text),
      name: kopekAdController.text,
      age: int.parse(kopekYasController.text),
    );
    utils.insertDog(enik);
    dogList = await utils.dogs();
    //print(dogList);
    getData();
  }

  _deleteDogTable() {
    utils.deleteTable();
    dogList = [];
    getData();
  }

  void getData() async {
    await utils.dogs().then((result) => {
      setState(() {
        dogList = result;
      })
    });
    print(dogList);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  void didChangeAppLifecycleState(AppLifecycleState state) {
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sqlite Örneği',
      home: Scaffold(
        appBar: AppBar(title: const Text("Veri Tabanı İşlemleri"),
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: Colors.orangeAccent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: kopekIdController,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'ID Giriniz'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: kopekAdController,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'İsim Giriniz'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: kopekYasController,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Yaş Giriniz'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: _onPressedAdd, child: Text("Kaydet")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: _onPressedUpdate, child: Text("Güncelle")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: _deleteDogTable,
                    child: const Text("Kaydı Sil")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListDogs()),
                      );
                    },
                    child: Text("Listele")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      getData();
                    },
                    child: Text("Yenile"),),
              ),
              Text(dogList.length.toString()),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: dogList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(dogList[index].name),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}