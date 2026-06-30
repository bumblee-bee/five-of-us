import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("🐼🐰🐥🦆🦔", style: TextStyle(fontSize: 70)),
        SizedBox(height: 15),
        Text(
          "Five of Us",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
