import 'package:flutter/material.dart';
import 'package:portofolioku_flutter/constans.dart';

class WhatIDO extends StatelessWidget {
  const WhatIDO(
      {Key? key,
      this.width,
      this.title,
      this.icons,
      this.height,
      this.description})
      : super(key: key);

  final double? width;
  final String? title;
  final String? description;
  final IconData? icons;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: whiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Icon(
                icons!,
                size: 30,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title!,
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    Text(description!,
                        maxLines: 3,
                        style: blackTextStyle.copyWith(fontSize: 14)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
