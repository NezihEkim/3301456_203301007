import 'package:flutter/material.dart';
import 'package:h1zen/masaTenisibireysel.dart';
import 'package:h1zen/masaTenisiikili.dart';

class MasaTenisi12 extends StatefulWidget {

  @override
  State<MasaTenisi12> createState() => _MasaTenisi12State();
}

class _MasaTenisi12State extends State<MasaTenisi12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/selçuk.webp"),
          ),
        ),
        backgroundColor: Colors.blueGrey,
        title: Text('Masa Tenisi'),
      ),
      backgroundColor: Colors.orangeAccent,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Text('Lütfen katılmak istediğiniz masa tenisi takımı türünü seçiniz.',
                      style: TextStyle(fontSize: 20.0)),

                  Padding(padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: MaterialButton(
                        color: Colors.deepOrange[600],
                        child: Text("Bireysel"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return MasaTenisibireysel();
                              },
                            ),
                          );
                        },
                      )
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: MaterialButton(
                        color: Colors.deepOrange[600],
                        child: Text("İkili Takım"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return MasaTenisiikili();
                              },
                            ),
                          );;
                        },
                      )
                  ),
                ]
            )
        )
    );
  }
}
