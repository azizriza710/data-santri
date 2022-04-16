import 'package:data_santri/constant.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String imgSrc;
  final String title;
  const CategoryCard({
    Key? key,
    required this.imgSrc,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 17),
                  spreadRadius: -10,
                  color: kPrimaryColor,
                  blurRadius: 17)
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                Spacer(),
                Image.asset(
                  imgSrc,
                  height: 100,
                  width: 100,
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text(title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontSize: 15)),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
