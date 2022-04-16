import 'package:flutter/material.dart';
import 'package:data_santri/constant.dart';
import 'package:data_santri/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavigation(
              imgSrc: "assets/images/search.png",
            ),
            BottomNavigation(
              imgSrc: "assets/images/home.png",
            ),
            BottomNavigation(
              imgSrc: "assets/images/settings.png",
            ),
          ],
        ),
      ),
      body: Body(),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  final String imgSrc;
  final Function()? press;
  final bool isActive;
  const BottomNavigation({
    Key? key,
    required this.imgSrc,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Image.asset(imgSrc, width: 20, height: 20)],
      ),
    );
  }
}
