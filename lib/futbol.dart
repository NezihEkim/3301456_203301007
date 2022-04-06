import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Futbol extends StatefulWidget {

  @override
  State<Futbol> createState() => _FutbolState();
}

class _FutbolState extends State<Futbol> {
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
        title: Text('Futbol Kayıt Formu'),
      ),
      backgroundColor: Colors.orangeAccent,

      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

      Text('Futbol Takımı Kayıt Formu',
          style: TextStyle(fontSize: 20.0)),
      Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Text(
          'Doğum Tarihiniz :',
          style: TextStyle(fontSize: 15.0),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 300,
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'GGAAYYYY',
            ),
            keyboardType: TextInputType.text,
            inputFormatters: [
              FilteringTextInputFormatter.singleLineFormatter
            ],
            onChanged: (text) {},
          ),
        ),
      ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Hangi Mevkide Oynuyorsunuz :',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Örn. STP, OOS',
                    ),
                    keyboardType: TextInputType.text,
                    inputFormatters: [
                      FilteringTextInputFormatter.singleLineFormatter
                    ],
                    onChanged: (text) {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Takıma Ayırabileceğiniz Bütçe :',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: '₺',
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (text) {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  '(Forma:100₺    '
                  'Krampon:150₺    '
                  'Tesis Kirası:50₺   '
                  'TOPLAM = 300₺)',
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Kendinizi ve spor geçmişinizi kısaca anlatınız',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: '',
                    ),
                    keyboardType: TextInputType.text,
                    inputFormatters: [
                      FilteringTextInputFormatter.singleLineFormatter
                    ],
                    onChanged: (text) {},
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: MaterialButton(
                    color: Colors.deepOrange[600],
                    child: Text("Formu Gönder"),
                    onPressed: () {
                      Navigator.pushNamed(context, '/onay');
                    },
                  )
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '(Formu gönderdiğiniz zaman, takım içerisinde düzenlenecek olan toplantı ve antrenmanlara katılım göstereceğinizi belirtmiş olursunuz.)',
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
]
    )
      )
    );
  }
}
