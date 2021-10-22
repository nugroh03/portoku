import 'package:flutter/material.dart';
import 'package:portofolioku_flutter/constans.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({Key? key, this.title, this.width}) : super(key: key);

  final String? title;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.only(
        left: 10,
        top: 5,
        bottom: 5,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              gradient1,
              gradient2,
            ],
          )),
      width: width,
      child: Row(
        children: [
          Container(
            height: 15,
            width: 15,
            decoration:
                BoxDecoration(color: whiteColor, shape: BoxShape.circle),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(title!,
                overflow: TextOverflow.ellipsis,
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                )),
          ),
        ],
      ),
    );
  }
}
