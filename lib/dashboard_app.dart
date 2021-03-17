import 'package:flutter/material.dart';
import 'drawer_app.dart' as Drawer;
import 'detail_about.dart' as detail;
import 'produk_list.dart' as produk;
import 'dart:ui';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.red[200],
      drawer: Drawer.Menudrawer(),
      resizeToAvoidBottomInset: false,
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Text("Dashboard",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[900])),
          Text("2 Items ",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => produk.Produk(),
              ));
            },
            child: MenuBox(
                nama: "List Produk",
                gambar: "keranjang.png"),
          ),
          Text(" ",
              textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0)),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => detail.DetailMenu(
                  nama: "Tentang Aplikasi",
                  deskripsi:
                      "Aplikasi ini adalah aplikasi yang dapat digunakan pengguna untuk melihat daftar minuman yang dijual sekaligus dengan detail dari produk minuman tersebut. Didalam aplikasi ini terdapat hanya 5 produk minuman dijual, yaitu pepsi, fanta, coca cola, dan sprite.",
                  gambar: "about.png",
                ),
              ));
            },
            child: MenuBox(
                nama: "About",
                gambar: "about.png"),
          ),
        ],
      ),
    );
  }
}

class MenuBox extends StatelessWidget {
  MenuBox({Key key, this.nama, this.gambar}) : super(key: key);
  final String nama;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[900],
      padding: EdgeInsets.all(1),
      height: 150,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/appimages/" + gambar,
              width: 150,
            ),
            Expanded(
              child: Container(
                color: Colors.red[50],
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(this.nama,
                          style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red[900],
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
