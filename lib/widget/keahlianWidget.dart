import 'package:flutter/material.dart';
import 'package:portofolioku_flutter/constans.dart';

class KeahlianWidget extends StatelessWidget {
  const KeahlianWidget({Key? key, this.title, this.width, this.button})
      : super(key: key);

  final String? title;
  final double? width;
  final VoidCallback? button;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: button,
      child: Container(
          margin: EdgeInsets.only(top: 10),
          constraints: BoxConstraints(
            minHeight: 30,
          ),
          width: width,
          decoration: BoxDecoration(
              color: greyColor, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(title!,
                textAlign: TextAlign.center,
                style: blackTextStyle.copyWith(fontSize: 14)),
          )),
    );
  }
}
