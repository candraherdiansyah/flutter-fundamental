import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class TicketScreen extends StatelessWidget {
  final String name, tanggal, tour, qty, price, totalPrice, img;
  TicketScreen({
    Key? key,
    required this.name,
    required this.tour,
    required this.qty,
    required this.tanggal,
    required this.price,
    required this.totalPrice,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Colors.blueAccent,
        title: Text("Invoice Ticket"),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4.0,
                color: Colors.black,
                margin: EdgeInsets.only(top: 24, right: 24, left: 24),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "${img}",
                          fit: BoxFit.cover,
                          height: displayHeight(context) * 0.25,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Full Name : " + name,
                            style: TextStyle(),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Tour Name : " + tour),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Date : " + tanggal),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Price : Rp." + price),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Quantity : " + qty),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Total : Rp." + totalPrice),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
