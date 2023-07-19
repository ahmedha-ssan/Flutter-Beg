import 'package:flutter/material.dart';

class BusniessCardApp extends StatelessWidget {
  const BusniessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF2B475E),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(999),
                border: Border.all(
                  color: const Color.fromARGB(255, 147, 183, 118),
                  width: 4,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(999),
                child: Image.asset(
                  'images/Ahmed.png',
                  width: 420,
                  //height: 500,
                ),
              ),
            ),
            const Text(
              'Ahmed Hassan',
              style: TextStyle(
                color: Color.fromARGB(255, 230, 224, 163),
                fontSize: 30,
                fontFamily: 'Pacifico',
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 230, 224, 163),
              thickness: 2,
              indent: 60,
              endIndent: 60,
              height: 30,
            ),
            const Text(
              'FlUTTER DEVELOPER',
              style: TextStyle(
                color: Color.fromARGB(255, 120, 118, 118),
                fontSize: 19,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.call,
                      size: 35,
                      color: Color(0xFF2B475E),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22),
                      child: Text(
                        '(+20)  01128793499',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.mail,
                      size: 35,
                      color: Color(0xFF2B475E),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22),
                      child: Text(
                        'ahmedhasanis26@gmail.com',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
