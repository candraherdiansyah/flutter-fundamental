import 'package:belajar/gridview/grid_latihan.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        // iconTheme: IconThemeData(color: Colors.redAccent),
        title: Text("About"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halaman About"),
            TextButton(
              child: Text("Halaman Latihan"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GridLatihanSatu()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
