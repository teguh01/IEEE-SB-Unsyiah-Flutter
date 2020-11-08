import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Listview",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green[900],
        title: new Text("Daftar Belajar"),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTutorial(
              gambar:
                  "https://www.searchpng.com/wp-content/uploads/2019/03/Whatsapp-Icon-PNG-1-715x715.png",
              judul: "WhatsApp"),
          new ListTutorial(
              gambar:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/599px-Instagram_icon.png",
              judul: "Instagram"),
          new ListTutorial(
              gambar:
                  "https://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19754.png",
              judul: "Facebook"),
          new ListTutorial(
              gambar:
                  "https://img.pngio.com/line-icon-png-vector-stock-green-line-png-png-1600_1600.png",
              judul: "Line"),
          new ListTutorial(
              gambar:
                  "https://cdn3.iconfinder.com/data/icons/social-media-chamfered-corner/154/Kakaotalk-512.png",
              judul: "Kakao Talk"),
          new ListTutorial(
              gambar:
                  "https://3.bp.blogspot.com/-jJ1y-T1qPxo/V15WQgXfRHI/AAAAAAAAALw/Q3AwAi1_PYwUwq_qeT42A0mzqVY_iUWjACKgB/s640/unnamed.png",
              judul: "Path"),
          new ListTutorial(
              gambar:
                  "https://pngimg.com/uploads/twitter/twitter_PNG19.png",
              judul: "Twitter"),
          new ListTutorial(
              gambar:
                  "https://cdn3.iconfinder.com/data/icons/picons-social/57/56-apple-512.png",
              judul: "Apple"),
          new ListTutorial(
              gambar:
                  "https://www.pikpng.com/pngl/m/457-4579085_logo-de-youtube-png-icon-youtube-logo-png.png",
              judul: "Youtube"),
              
        ],
      ),
    );
  }
}

class ListTutorial extends StatelessWidget {
  ListTutorial({this.gambar, this.judul});

  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Image(image: new NetworkImage(gambar), width: 100.0),
            new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    new Text(judul, style: new TextStyle(fontSize: 20.0)
                    ),
                    new Text("ini adalah deskripsi tutorial", style: new TextStyle(fontSize: 19.0, color: Colors.grey)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
