import 'package:flutter/material.dart';
import 'package:bai3/Screens/Home/Components/app_bar.dart';
import 'package:bai3/Screens/Home/Components/body.dart';

import '../../constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
      body: Container(
        height: size.height,
        // it will take full width
        width: size.width,
        decoration: const BoxDecoration(

          color: Color(0xFFffb500),
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 40,),
            const CustomAppBar(),
            const Spacer(),
            // It will cover 1/3 of free spaces
            const Body(),
            const Spacer(
              flex: 2,
            ),
            FittedBox(
              // Now it just take the required spaces
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xFF372930),
                  borderRadius: BorderRadius.circular(34),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 38,
                      width: 38,
                      decoration: const BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF372930),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      "Get Started".toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
              ),
            )
            // it will cover 2/3 of free spaces
          ],
        ),
      ),
    );
  }
}