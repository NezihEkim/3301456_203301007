import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:h1zen/onay.dart';
class MasaTenisiikili extends StatefulWidget {


  @override
  State<MasaTenisiikili> createState() => _MasaTenisiikiliState();
}

class _MasaTenisiikiliState extends State<MasaTenisiikili> {
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
        title: Text('Masa Tenisi (İkili) Kayıt Formu'),
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
                        ' Varsa Birlikte Başvurmak İstediğiniz Takım Arkadaşınızın Adı ve Numarası :',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Örn. Nezih EKİM 203301007',
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
                        ' Yatkın Olduğunuz Teknik (ÖNEMLİ) :',
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
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'NOT : Çiftler halinde yapılan başvurularda, takımlar tutarları yarı yarıya olmak üzere paylaşacakalardır.',
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
                  ]
              ),
            )
        )
    );
  }
}
