import 'package:flutter/material.dart';
import 'package:h1zen/anaSayfa.dart';

class Onay extends StatefulWidget {
  @override
  State<Onay> createState() => _OnayState();
}

class _OnayState extends State<Onay> {
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
          title: Text('Tebrikler!'),
        ),
        backgroundColor: Colors.orangeAccent,
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('Başvuru Formunuzu Aldık.',
                            style: TextStyle(fontSize: 50.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('    En kısa zamanda başvurunuzu değerlendirip öğrenci e-postanız aracılığı ile bilgilendirileceksiniz.',
                            style: TextStyle(fontSize: 20.0)),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 200.0),
                          child:
                          MaterialButton(
                            color: Colors.blueGrey[600],
                            child: Text("Anasayfaya Dön"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return AnaSayfa();
                                  },
                                ),
                              );
                            },
                          )
                      ),
                    ]
                )
            )
        )
    );
  }
}
