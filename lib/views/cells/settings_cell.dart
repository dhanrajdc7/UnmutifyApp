import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:unmutify/utils/constants.dart';

class SettingsCell extends StatelessWidget {
  const SettingsCell({
    Key? key,
    required this.iconData,
    required this.title,
    required this.rightObj
  }) : super(key: key);

  final IconData iconData;
  final String title;
  final Widget rightObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 15,
          backgroundColor: kIconBg,
          child: Icon(iconData, size: 18, color: kIconFg,),
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600
          ),
        ).paddingLeft(15),
        Spacer(),
        rightObj
      ],
    ).paddingSymmetric(horizontal: 16, vertical: 12);
  }
}