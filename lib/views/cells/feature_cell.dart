import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class FeatureCell extends StatelessWidget {
  const FeatureCell({
    Key? key,
    required this.iconData,
    required this.title,
    required this.subTitle
  }) : super(key: key);

  final IconData iconData;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, size: 40, color: Colors.blueAccent,),
        SizedBox(width: 10,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
            SizedBox(height: 3,),
            Text(subTitle, style: TextStyle(fontSize: 16, color: Colors.grey),
            )
          ],
        )
      ],
    ).paddingSymmetric(horizontal: 16, vertical: 8);
  }
}