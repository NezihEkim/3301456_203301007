import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:h1zen/anaSayfa.dart';
import 'package:h1zen/futbol.dart';
import 'package:h1zen/hakk%C4%B1nda.dart';
import 'package:h1zen/masaTenisiikili.dart';
import 'package:h1zen/masatenisi12.dart';
import 'package:h1zen/voleybol.dart';
import 'package:h1zen/basketbol.dart';
import 'package:h1zen/masaTenisibireysel.dart';
import 'package:h1zen/onay.dart';
import 'package:h1zen/hakkında.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kayıt Otomasyonu',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => MyHomePage(),
        '/anasayfa'  : (context) => AnaSayfa(),
        '/futbol'    : (context) => Futbol(),
        '/voleybol'  : (context) => Voleybol(),
        '/basketbol' : (context) => Basketbol(),
        '/masatenisibireysel': (context) => MasaTenisibireysel(),
        '/masatenisiikili' : (context) => MasaTenisiikili(),
        '/masatenisi12': (context) => MasaTenisi12(),
        '/onay'      : (context) => Onay(),
        '/hakkında'  : (context) => Hakkinda(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String adSoyad = '';
  String ogrNo = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/imgs/selçuk.webp"),
          ),
        ),
        backgroundColor: Colors.blueGrey,
        title: Text('GİRİŞ '),
      ),
        backgroundColor: Colors.yellow,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image(
                      image: AssetImage("Assets/imgs/selçuk.webp"),
                    ),
                  ),
                  Text('Kayıt Otomasyonuna Hoş Geldiniz',
                      style: TextStyle(fontSize: 30.0)),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Adınız ve Soyadınız:',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 300,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Adınız Soyadınız',
                        ),
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          FilteringTextInputFormatter.singleLineFormatter
                        ],
                        onChanged: (text) {},
                      ),
                    ),
                  ),
                  Text(
                    'Öğrenci Numaranız:',
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 300,
                      child: TextFormField(
                        maxLength: 9,
                        decoration: const InputDecoration(
                          hintText: 'Öğrenci Numaranız',
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        onChanged: (text) {

                        },
                      ),
                    ),
                  ),
                  Padding
                    (padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: MaterialButton(
                    color: Colors.deepOrange[600],
                    child: Text("Giriş Yap"),
                    onPressed: () {
                      Navigator.pushNamed(context, '/anasayfa');
                    },
                  )
                  ),
                  Padding
                    (padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: MaterialButton(
                        color: Colors.deepOrange[600],
                        child: Text("Hakkında"),
                        onPressed: () {
                          Navigator.pushNamed(context, '/hakkında');
                        },
                      )

                  ),

                ]
            )
        )
    );
  }
}

