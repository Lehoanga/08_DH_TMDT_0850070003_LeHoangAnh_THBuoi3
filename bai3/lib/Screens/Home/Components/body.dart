import 'package:flutter/material.dart';
import 'package:bai3/constant.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Burger".toUpperCase(),
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
              color: kTextcolor,
              fontWeight: FontWeight.bold,
              fontSize: 50, // Set your desired font size here
            ),
          ),
          Text(
            "Lorem ipsum dolor\n sit amet, consectetur \nadipiscing elit, sed do \neiusmod tempor \nincididunt ut \nlabor",
            style: TextStyle(
              fontSize: 21,
              color: kTextcolor.withOpacity(0.34),
            ),
          ),



        ],
      ),
    );
  }
}