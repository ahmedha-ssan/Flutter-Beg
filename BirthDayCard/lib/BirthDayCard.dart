import 'package:flutter/material.dart';

class BirthCard extends StatelessWidget {
  const BirthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFD2BCD5),
        body: Image.asset('images/bdc.png'),
      ),
    );
  }
}
