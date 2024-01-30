import 'package:flutter/material.dart';

class BelajarListBasic extends StatelessWidget {
  const BelajarListBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 300,
            width: 200,
            color: Colors.blue,
            child: Center(child: Text("1")),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 300,
            width: 200,
            color: Colors.red,
            child: Center(child: Text("1")),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 300,
            width: 200,
            color: Colors.green,
            child: Center(child: Text("1")),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 300,
            width: 200,
            color: Colors.purple,
            child: Center(child: Text("1")),
          ),
        ],
      ),
    );
  }
}
