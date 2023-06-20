import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:h1zen/onay.dart';
class MasaTenisibireysel extends StatefulWidget {

  @override
  State<MasaTenisibireysel> createState() => _MasaTenisibireyselState();
}

class _MasaTenisibireyselState extends State<MasaTenisibireysel> {
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
        title: Text('Masa Tenisi (Bireysel) Kayıt Formu'),
      ),
      backgroundColor: Colors.orangeAccent,
        body: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text('Masa Tenisi Takımı Kayıt Formu',
                        style: TextStyle(fontSize: 20.0)),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        ' Doğum Tarihiniz :',
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
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        ' Boyunuz :',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Örn. 185, 165',
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
                        ' Yatkın Olduğunuz Teknik :',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Örn. Backhand, Forehand, Smite..',
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
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        ' Ne Kadar Zamanlık Masa Tenisi Geçmişiniz Var :',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Örn. 3 Ay, 1 Yıl, ..',
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
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        '(Forma(tek seferlik):50₺    '
                            'Raketler(tek seferlik):75*2=150₺    '
                            'Masa Değişimi :40₺    '
                            'Malzeme Tutarı :70₺   '
                            'TOPLAM = 310₺)',
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),


                    Padding(padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: MaterialButton(
                          color: Colors.deepOrange[600],
                          child: Text("Formu Gönder"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Onay();
                                },
                              ),
                            );
                          },
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '(Formu gönderdiğiniz zaman, takım içerisinde düzenlenecek olan toplantı ve antrenmanlara katılım göstereceğinizi belirtmiş olursunuz.)',
                        style: TextStyle(fontSize: 13.0),
                      ),
                    ),

                  ]
              ),
            )
        )
    );
  }
}
