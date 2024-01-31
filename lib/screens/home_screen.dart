import 'package:belajar/latihan_satu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halaman Home"),
            SizedBox(
              height: 10,
            ),
            TextButton(
              child: Text("Halaman 1"),
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              child: Text("Halaman 2"),
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              child: Text("Halaman 3"),
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LatihanSatu(),
                  ),
                );
              },
              child: Container(
                color: Colors.red,
                width: 80,
                height: 20,
                child: Text("Latihan List"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
