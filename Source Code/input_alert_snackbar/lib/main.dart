import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Input text, alert and snapbar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String teks = "";

  TextEditingController controller = new TextEditingController();
  TextEditingController controller1 = new TextEditingController();
  TextEditingController controller2 = new TextEditingController();

  void _alertdialog(String str) {
    if(str.isEmpty) return;

    AlertDialog alertDialog = new AlertDialog(
      content: new Text(str, style: new TextStyle(fontSize: 20.0),),
      actions: <Widget>[
        new RaisedButton(
          color: Colors.purple,
          child: new Text("OK"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ],
    );

    showDialog(context: context, child: alertDialog);
  }

  final GlobalKey<ScaffoldState> _scaffoldState = new GlobalKey<ScaffoldState>();

  void _snackbar(String str){
    if(str.isEmpty) return;

    _scaffoldState.currentState.showSnackBar(new SnackBar(
      content: new Text(str, style: new TextStyle(fontSize: 20.0),),
      duration: new Duration(seconds: 3),
    ));

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

            new TextField(
              controller: controller,
              decoration: new InputDecoration(
                hintText: "Tulid disini",
              ),
              onSubmitted: (String str){
                setState(() {
                  teks = str + "\n"+ teks;
                  controller.text="";
                });
              },
            ),

            new Text(teks, style: new TextStyle(fontSize: 20.0),),

            new TextField(
              controller: controller1,
              decoration: new InputDecoration(
                hintText: "Tulid untuk alert",
              ),
              onSubmitted: (String str){
                _alertdialog(str);
                controller1.text = "";
              },
            ),

            new TextField(
              controller: controller2,
              decoration: new InputDecoration(
                hintText: "Tulid untuk snapbar",
              ),
              onSubmitted: (String str){
                _snackbar(str);
                controller2.text = "";
              },
            ),

          ],
        ),
      ),
    );
  }
}

