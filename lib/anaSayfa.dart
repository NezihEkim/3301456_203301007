import 'package:flutter/material.dart';



class AnaSayfa extends StatefulWidget {

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
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
        title: Text('Anasayfa'),
      ),
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Kayıt olmak istediğiniz spor takımını seçiniz.',
                      style: TextStyle(fontSize: 30.0)),
                ),
          Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child:
          MaterialButton(
            color: Colors.blueGrey[600],
            child: Text("Futbol"),
            onPressed: () {
              Navigator.pushNamed(context, '/futbol');
            },
          )
      ),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child:
                    MaterialButton(
                      color: Colors.blueGrey[600],
                      child: Text("Voleybol"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/voleybol');
                      },
                    )
                ),
                Padding(
                    padding: const EdgeInsets.all(2),
                    child:
                    MaterialButton(
                      color: Colors.blueGrey[600],
                      child: Text("Basketbol"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/basketbol');
                      },
                    )
                ),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child:
                    MaterialButton(
                      color: Colors.blueGrey[600],
                      child: Text("Masa Tenisi"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/masatenisi12');
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
