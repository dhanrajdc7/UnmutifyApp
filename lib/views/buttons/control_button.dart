import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class ControlButton extends StatelessWidget {

  final String title;
  final IconData icon;
  final Color clr;
  final Function onPressed;

  const ControlButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.clr,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        color: clr,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Icon(icon, size: 24, color: Colors.white,),
          ),
          Expanded(
            flex: 6,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
            ),
          )
        ],
      ).onTap(onPressed).paddingSymmetric(horizontal: 8),
    );
  }
}
