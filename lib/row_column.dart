import 'package:flutter/material.dart';

class BelajarRowColumn extends StatelessWidget {
  const BelajarRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Ini  isi Row 1"),
            Text("Ini  isi Row 2"),
            Text("Ini  isi Row 3"),
          ],
        ),
        Text("Ini Isi Column 1"),
        Text("Ini Isi Column 2"),
      ],
    );
  }
}
