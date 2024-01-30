import 'package:flutter/material.dart';

class BelajarRow extends StatelessWidget {
  const BelajarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Ini isi Row 1"),
        Text("Ini isi Row 2"),
        Text("Ini isi Row 3"),
      ],
    );
  }
}
