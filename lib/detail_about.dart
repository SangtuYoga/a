import 'package:flutter/material.dart';

class DetailMenu extends StatefulWidget {
  DetailMenu(
      {Key key, this.nama, this.deskripsi, this.gambar})
      : super(key: key);
  final String nama; 
  final String deskripsi;
  final String gambar;
  @override
  _DetailMenuState createState() => _DetailMenuState();
}

class _DetailMenuState extends State<DetailMenu> {
  final childrenstar = <Widget>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("${widget.nama}"),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.red[200],
      body: new Container(
        width: double.infinity,
        child: new ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                new Image.asset("assets/appimages/" + widget.gambar)
          ],
        ),
        Container(
          decoration: new BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [const Color(0xffe53935), 
              const Color(0xffc62828)],
            ),
          ),
          padding: EdgeInsets.all(10.0),
        ),
        Container(
          padding: EdgeInsets.all(10),
          color: Colors.redAccent,
          width: double.infinity,
          height: double.maxFinite,
          child: new Text(widget.deskripsi,
                          style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
        )
      ],
    ),
  ),
);
}
}