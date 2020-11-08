import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Flow Control dan Button",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int umur;
  String teks = "";
  String kondisi = "";

  TextEditingController controller = new TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldState = new GlobalKey<ScaffoldState>();

  void umurManusia(){
    if(teks == "12"){
      kondisi = "anak-anak";
    }
    else{
      kondisi = "masukan input umur yang benar";
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldState,
      appBar: new AppBar(
        title: new Text("input text, alert and snapbar"),
        backgroundColor: Colors.purple,
      ),

      body: new Container(
        child: new Column(
          children: <Widget>[
            new TextFormField(
              controller: controller,
              decoration: new InputDecoration(
                hintText: "Tulid disini",
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: MaterialButton(
                onPressed: (){
                  setState(() {
                    teks = controller.text;
                    umurManusia();
                  });
                },
                child: Text('Submit'),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(left: 120.0),
              child: Row(
                children: <Widget>[
                  Text("Hasilnya :   " + kondisi),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

