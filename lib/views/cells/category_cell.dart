import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';
import 'package:unmutify/emojis/category.dart';
import 'package:unmutify/utils/themes/theme_provider.dart';
import 'package:unmutify/views/screens/detail_emoji_view.dart';

class CategoryCell extends StatelessWidget {

  final Category category;

  const CategoryCell({
    Key? key,
    required this.category
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black12),
        boxShadow: [
          BoxShadow(color: Colors.black26.withOpacity(0.2), blurRadius: 12)
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(category.icon, size: 48, color: Colors.blueAccent,),
          SizedBox(height: 16,),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              category.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          )
        ],
      ).paddingSymmetric(vertical: 8),
    ).onTap((){
      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailEmojiView(category: category)),);
    });
  }
}
