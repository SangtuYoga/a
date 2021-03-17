import 'package:flutter/material.dart';
import 'detail_produk.dart'as detail;

class Produk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Produk Minuman"),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.red[200],
      resizeToAvoidBottomInset: false,
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => detail.DetailProduk(
                  nama: "Coca Cola",
                  deskripsi:
                      "Minuman ringan berkarbonasi yang dijual di toko, restoran dan mesin penjual di lebih dari 200 negara. Minuman ini diproduksi oleh The Coca-Cola Company asal Atlanta, Georgia, dan sering disebut Coke saja. ",
                  harga: 5000,
                  gambar: "cocacola.jpg",
                  star: 2,
                ),
              ));
            },
            child: ProductBox(
                nama: "Coca Cola",
                deskripsi: "Minuman ringan berkarbonasi.",
                harga: 5000,
                gambar: "cocacola.jpg",
                star: 2),
          ),
          Text(" ", textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0)),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => detail.DetailProduk(
                  nama: "Fanta",
                  deskripsi:
                      "Minuman ringan berkarbonasi rasa buah yang diproduksi oleh The Coca-Cola Company. Tersedia lebih dari ratusan pilihan rasa di seluruh dunia. Minuman ini diperkenalkan pertama kali di Jerman pada tahun 1940.",
                  harga: 6000,
                  gambar: "fanta.jpg",
                  star: 3,
                ),
              ));
            },
            child: ProductBox(
                nama: "Fanta",
                deskripsi: "Minuman ringan berkarbonasi rasa buah.",
                harga: 6000,
                gambar: "fanta.jpg",
                star: 3),
          ),
          Text(" ", textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0)),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => detail.DetailProduk(
                  nama: "Lemonade",
                  deskripsi:
                      "Limun adalah nama untuk sejumlah minuman manis yang ditemukan di seluruh dunia, yang semuanya dikarakteristikan dengan rasa lemon. ",
                  harga: 4500,
                  gambar: "lemonade.jpg",
                  star: 1,
                ),
              ));
            },
            child: ProductBox(
                nama: "Lemonade",
                deskripsi: "Minuman manis dengan rasa lemon.",
                harga: 4500,
                gambar: "lemonade.jpg",
                star: 1),
          ),
          Text(" ", textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0)),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => detail.DetailProduk(
                  nama: "Pepsi",
                  deskripsi:
                      "Minuman ringan berkarbonasi yang diproduksi oleh PepsiCo. Awalnya dibuat dan dikembangkan pada tahun 1893 oleh Caleb Bradham dan diperkenalkan sebagai Minuman Brad, namanya diganti menjadi Pepsi-Cola pada tahun 1898, dan kemudian disingkat menjadi Pepsi pada tahun 1961.",
                  harga: 6500,
                  gambar: "pepsi.jpg",
                  star: 4,
                ),
              ));
            },
            child: ProductBox(
                nama: "Pepsi",
                deskripsi:
                    "Minuman ringan berkarbonasi diproduksi oleh PepsiCo.",
                harga: 6500,
                gambar: "pepsi.jpg",
                star: 4),
          ),
          Text(" ", textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0)),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => detail.DetailProduk(
                  nama: "Sprite",
                  deskripsi:
                      "Minuman yang tidak berwarna dengan rasa lemon dan jeruk nipis serta bebas kafeina yang diproduksi oleh The Coca-Cola Company dan diluncurkan secara resmi di Amerika Serikat pada tahun 1961 untuk menggantikan nama Fanta Klare Zitrone di Jerman Barat.",
                  harga: 5500,
                  gambar: "sprite.jpg",
                  star: 5,
                ),
              ));
            },
            child: ProductBox(
                nama: "Sprite",
                deskripsi:
                    "Minuman yang tidak berwarna dengan rasa lemon & jeruk nipis.",
                harga: 5500,
                gambar: "sprite.jpg",
                star: 5),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.nama, this.deskripsi, this.harga, this.gambar, this.star})
      : super(key: key);
  final String nama;
  final String deskripsi;
  final int harga;
  final String gambar;
  final int star;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[900],
      padding: EdgeInsets.all(1),
      height: 100,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(this.nama,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(this.deskripsi),
                    Text(
                      "Harga: Rp." + this.harga.toString(),
                      style: TextStyle(color: Colors.green[600]),
                    ),
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
