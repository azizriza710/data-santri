import 'package:flutter/material.dart';
import 'package:data_santri/constant.dart';
import 'package:data_santri/screens/home/components/header_with_searchbox.dart';

import '../../../widgets/category_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.45,
          decoration: BoxDecoration(color: kTextColor),
        ),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: kDefaultPadding + 10),
                child: Text("Masjid \nAl - Musyawarah",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: kPrimaryColor)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 30, bottom: 50),
                height: 30,
                width: size.width,
                padding: EdgeInsets.only(left: kDefaultPadding),
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(offset: Offset(0, 4), color: kPrimaryColor)
                    ]),
                child: Text("Maghrib :  17.52",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kTextColor)),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: [
                    CategoryCard(
                      title: "DKM",
                      imgSrc: "assets/images/mosque.png",
                    ),
                    CategoryCard(
                      title: "Madrasah",
                      imgSrc: "assets/images/pray.png",
                    ),
                    CategoryCard(
                      title: "Al Quran",
                      imgSrc: "assets/images/quran.png",
                    ),
                    CategoryCard(
                      title: "Kalender Islam",
                      imgSrc: "assets/images/calendar.png",
                    ),
                  ],
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}
