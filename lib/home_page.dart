import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sonuc = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void toplamaIslemi() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sonuc = num1 + num2;
    });
  }

  void cikarmaIslemi() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sonuc = num1 - num2;
    });
  }

  void carpmaIslemi() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sonuc = num1 * num2;
    });
  }

  void bolmeIslemi() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sonuc = num1 ~/ num2;
    });
  }

  void temizlemeIslemi() {
    setState(() {
      t1.text="0";
      t2.text="0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hesap Makinesi App"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Sonuç : $sonuc",
              style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration:
                  new InputDecoration(hintText: "Birinci Sayıyı Giriniz..."),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration:
                  new InputDecoration(hintText: "İkinci Sayıyı Giriniz..."),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.greenAccent,
                  onPressed: toplamaIslemi,
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.greenAccent,
                  onPressed: cikarmaIslemi,
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("*"),
                  color: Colors.greenAccent,
                  onPressed: carpmaIslemi,
                ),
                new MaterialButton(
                  child: new Text("/"),
                  color: Colors.greenAccent,
                  onPressed: bolmeIslemi,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              new MaterialButton(
                child: new Text("Temizle"),
                color: Colors.greenAccent,
                onPressed: temizlemeIslemi,
              ),
            ])
          ],
        ),
      ),
    );
  }
}
