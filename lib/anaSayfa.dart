import 'package:flutter/material.dart';
import 'package:h1zen/api.dart';
import 'package:h1zen/basketbol.dart';
import 'package:h1zen/file_operations.dart';
import 'package:h1zen/futbol.dart';
import 'package:h1zen/masatenisi12.dart';
import 'package:h1zen/veritabani.dart';
import 'package:h1zen/voleybol.dart';



class AnaSayfa extends StatefulWidget {

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/selçuk logo.jpg"),
          ),
        ),
        backgroundColor: Colors.blueGrey,
        title: Text('Anasayfa'),
      ),
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Kayıt olmak istediğiniz spor takımını seçiniz.',
                      style: TextStyle(fontSize: 30.0)),
                ),
          Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child:
          MaterialButton(
            color: Colors.cyan[300],
            child: Text("Futbol"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Futbol();
                  },
                ),
              );
            },
          )
      ),
                Padding(
                    padding: const EdgeInsets.all(20),
                    child:
                    MaterialButton(
                      color: Colors.cyan[300],
                      child: Text("Voleybol"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Voleybol();
                            },
                          ),
                        );
                      },
                    )
                ),
                Padding(
                    padding: const EdgeInsets.all(2),
                    child:
                    MaterialButton(
                      color: Colors.cyan[300],
                      child: Text("Basketbol"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Basketbol();
                            },
                          ),
                        );
                      },
                    )
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child:
                    MaterialButton(
                      color: Colors.cyan[300],
                      child: Text("Masa Tenisi"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return MasaTenisi12();
                            },
                          ),
                        );
                      },
                    )
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child:
                    MaterialButton(
                      color: Colors.cyan[300],
                      child: Text("Dosya Yazma"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) {
                          return FileOperationsScreen();
                          },
                         ),
                        );
                      },
                    )
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child:
                    MaterialButton(
                      color: Colors.cyan[300],
                      child: Text("VeriTabani"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Veri();
                            },
                          ),
                        );
                      },
                    )
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child:
                    MaterialButton(
                      color: Colors.cyan[300],
                      child: Text("ApiRenk"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ApiRenk();
                            },
                          ),
                        );
                      },
                    )
                ),

    ]
    ),
        ),
      )
    );
  }
}
