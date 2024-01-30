import 'package:flutter/material.dart';

// container adalah wadah untuk menampung widget lain
class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
            image:
                NetworkImage("https://pbs.twimg.com/media/Fs-rj9qaIAkP4-x.jpg"),
            fit: BoxFit.fill),
        gradient: LinearGradient(
          colors: [Colors.cyanAccent, Colors.indigoAccent],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "ini adalah container ini adalah containerini adalah containerini adalah containerini adalah containerini adalah containerini adalah containerini adalah containerini adalah container",
        style: TextStyle(),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
