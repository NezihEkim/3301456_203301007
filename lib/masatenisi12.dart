import 'package:flutter/material.dart';

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
          child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/anasayfa');
            },
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/imgs/selçuk.webp"),
            ),
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
                      child: GestureDetector(
                        onLongPress:  (){
                          Navigator.pushNamed(context, '/masatenisibireysel');
                        },
                        child: MaterialButton(
                          color: Colors.deepOrange[600],
                          child: Text("Bireysel"),
                          onPressed: () {

                          },
                        ),
                      )
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: GestureDetector(
                        onLongPress: (){
                          Navigator.pushNamed(context, '/masatenisiikili');
                        },
                        child: MaterialButton(
                          color: Colors.deepOrange[600],
                          child: Text("İkili Takım"),
                          onPressed: () {
                          },
                        ),
                      )
                  ),
                ]
            )
        )
    );
  }
}
