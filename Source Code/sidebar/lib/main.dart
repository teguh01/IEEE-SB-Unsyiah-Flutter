import 'package:flutter/material.dart';
import './detail.dart';

void main(){
  runApp(new MaterialApp(
    title: "Sidebar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String gambar1 = "https://i.pinimg.com/originals/1b/1a/c5/1b1ac5be9c7d7b23d181096b2834c603.jpg";
  String gambar2 = "https://wallpapercave.com/wp/wp5382960.png";
  String backup;

  String nama1 = "Yuto";
  String nama2 = "Haruhi";
  String backupnama;

  void gantiUser(){
    this.setState((){
      backup = gambar1;
      gambar1 = gambar2;
      gambar2 = backup;

      backupnama = nama1;
      nama1 = nama2;
      nama2 = backupnama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Demo Sidebar (Drawer)"), backgroundColor: Colors.red[700],),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(

              accountName: new Text(nama1),
              accountEmail: new Text("yuto@gmail.com"),
              currentAccountPicture: new GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new Detail(nama: nama1, gambar: gambar1,) 
                ));
                },
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(gambar1),
                ),
              ),

              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage("https://image.winudf.com/v2/image/Y29tLmNvZGVGYWN0b3J5Lm5pZ2h0U2t5X3NjcmVlbl8yXzE1Mjk2ODAzOTdfMDQy/screen-2.jpg?fakeurl=1&type=.jpg"),
                  fit: BoxFit.cover,
                ),
              ),

              otherAccountsPictures: <Widget>[

                new GestureDetector(
                  onTap: () => gantiUser(),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(gambar2),
                  ),
                ),
              ],
            ),

            new ListTile(
              title: new Text("Setting"),
              trailing: new Icon(Icons.settings),
            ),
            
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
            ),

          ],
        ),
      ),
      body: new Container(

      ),
    );
  }
}