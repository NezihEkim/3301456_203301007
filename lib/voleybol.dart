import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:h1zen/onay.dart';
class Voleybol extends StatefulWidget {

  @override
  State<Voleybol> createState() => _VoleybolState();
}

class _VoleybolState extends State<Voleybol> {
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
        title: Text('Voleybol Kayıt Formu'),
      ),
      backgroundColor: Colors.orangeAccent,
        body: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text('Voleybol Takımı Kayıt Formu',
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
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Boyunuz ve Kilonuz :',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Örn. 170-60',
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
                            hintText: 'Örn. Pasör, Libero',
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
                        '(Forma:120₺    '
                        'Voleybol topu:90₺    '
                            'Turnuva katılım Ücreti:40₺    '
                            'Salon bakım:20₺   '
                            'TOPLAM = 270₺)',
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Voleybol kariyerinizi ve çalıştığınız takımları belirtiniz',
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
