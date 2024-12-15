import 'package:ecommerceapp/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                'lib/images/nike.png',
                height: 240,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Just do it!",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
            ),
            const Text(
              "Brand new sneakers and custom kicks made with premium quality",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage())),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(25),
                child: Center(
                    child: Text(
                  "Shop now!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
