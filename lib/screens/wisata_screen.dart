import 'package:belajar/screens/detail_wisata_screen.dart';
import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class ListWisataScreen extends StatelessWidget {
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Ubud",
      "kota": "Bali",
      "image": "assets/images/ubud.jpg",
      "desc": "ubud adalah ...."
    },
    {
      "nama": "Nusa Penida",
      "kota": "Bali",
      "image": "assets/images/nusapenida.jpg",
      "desc": "nusa penida ..."
    },
    {
      "nama": "Pantai Kuta",
      "kota": "Bali",
      "image": "assets/images/kuta.jpg",
      "desc": "kuta ..."
    },
    {
      "nama": "Gunung Rinjani",
      "kota": "Lombok",
      "image": "assets/images/rinjani.jpg",
      "desc": "rinjani ..."
    },
    {
      "nama": "Ranca Upas",
      "kota": "Bandung",
      "image": "assets/images/rancaupas.jpg",
      "desc": "ranca upas ...."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: wisataData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailWisataScreen(
                        nama: wisataData[index]["nama"],
                        kota: wisataData[index]["kota"],
                        image: wisataData[index]["image"],
                        desc: wisataData[index]["desc"]),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${wisataData[index]["image"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Text(
                    "${wisataData[index]["nama"]} - ${wisataData[index]["kota"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
