import 'package:flutter/material.dart';

class Hakkinda extends StatelessWidget {

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
        title: Text('HAKKINDA'),
      ),
        backgroundColor: Colors.orangeAccent,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Text('Bu uygulama Nezih EKİM tarafından Selçuk Üniversitesi Spor Dairesi Başkanlığı adına yapılmıştır.',
                      style: TextStyle(fontSize: 20.0)),

        ]
        )
        )
    );
  }
}
