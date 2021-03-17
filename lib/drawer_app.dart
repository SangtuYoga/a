import 'package:flutter/material.dart';
import 'detail_about.dart' as detail;

class Menudrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //widget drawer
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            //bagian header pada drawer
            accountName: Text("Sangtu Yoga"),
            accountEmail: Text("yogapramana8@gmail.com"),
            currentAccountPicture: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/appimages/yoga.jpeg"),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.redAccent), // mewarnai background drawer
          ),
          ListTile(
            //widget untuk drawer di bagian list tilenya
            onTap: () {},
            title: Text("Profil"),
            trailing: Icon(Icons.account_circle),
          ),
          ListTile(
            onTap: () {},
            title: Text("Pengaturan"),
            trailing: Icon(Icons.settings),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => detail.DetailMenu(
                  nama: "Tentang Aplikasi Penjualan Minuman",
                  deskripsi:
                      "Aplikasi ini adalah aplikasi yang dapat digunakan pengguna untuk melihat daftar minuman yang dijual sekaligus dengan detail dari produk minuman tersebut. Didalam aplikasi ini terdapat hanya 5 produk minuman dijual, yaitu pepsi, fanta, coca cola, dan sprite.",
                  gambar: "about.png",
                ),
              ));
            },
            title: Text("About"),
            trailing: Icon(Icons.help),
          ),
          ListTile(
            onTap: () {},
            title: Text("Keluar"),
            trailing: Icon(Icons.logout),
          )
        ],
      ),
    );
  }
}
