import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:h1zen/onay.dart';
class Basketbol extends StatefulWidget {

  @override
  State<Basketbol> createState() => _BasketbolState();
}

class _BasketbolState extends State<Basketbol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/selçuk.webp"),
          ),
        ),
        backgroundColor: Colors.blueGrey,
        title: const Text('Basketbol Kayıt Formu'),
      ),
      backgroundColor: Colors.orangeAccent,
        body: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    const Text('Basketbol Takımı Kayıt Formu',
                        style: TextStyle(fontSize: 20.0)),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        ' Doğum Tarihiniz :',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
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
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        ' Boyunuz ve Kilonuz :',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Örn. 185-75',
                          ),
                          keyboardType: TextInputType.text,
                          inputFormatters: [
                            FilteringTextInputFormatter.singleLineFormatter
                          ],
                          onChanged: (text) {},
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        ' Hangi Mevkide Oynuyorsunuz :',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Örn. Pivot, Şutör',
                          ),
                          keyboardType: TextInputType.text,
                          inputFormatters: [
                            FilteringTextInputFormatter.singleLineFormatter
                          ],
                          onChanged: (text) {},
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        ' Kullanmak İstediğiniz Forma Numarası Nedir :',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Örn. 24, 63',
                          ),
                          keyboardType: TextInputType.text,
                          inputFormatters: [
                            FilteringTextInputFormatter.singleLineFormatter
                          ],
                          onChanged: (text) {},
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        '(Forma(tek seferlik):150₺    '
                            'Ayakkabı(tek seferlik):220₺    '
                            'File bakımı:20₺    '
                            'Malzeme Kirası:70₺   '
                            'TOPLAM = 460₺)',
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        'NOT : Basketbol takımının takım kaptanı, malzeme kirasından MUAFTIR.',
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),

                    Padding(padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: MaterialButton(
                          color: Colors.deepOrange[600],
                          child: const Text("Formu Gönder"),
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
                  ]
              ),
            )
        )
    );
  }
}
