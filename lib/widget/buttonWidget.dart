import 'package:flutter/material.dart';

import '../constans.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, this.title, this.width}) : super(key: key);

  final String? title;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width! * 0.1,
      height: 35,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            gradient1,
            gradient2,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
          child: Text(title!, style: whiteTextStyle.copyWith(fontSize: 14))),
    );
  }
}
