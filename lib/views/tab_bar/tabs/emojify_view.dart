import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:unmutify/views/cells/category_cell.dart';
import 'package:unmutify/emojis/emojis.dart' as emojis;
import 'package:nb_utils/nb_utils.dart';

class EmojifyView extends StatefulWidget {
  const EmojifyView({Key? key}) : super(key: key);

  @override
  _EmojifyViewState createState() => _EmojifyViewState();
}

class _EmojifyViewState extends State<EmojifyView> {

  var allSections = emojis.allCategories;

  @override
  Widget build(BuildContext context) {

    final orientation = MediaQuery.of(context).orientation;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Emoji To Speech"),),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: GridView.builder(
              itemCount: allSections.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: (orientation == Orientation.portrait ? 2 : 4),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return CategoryCell(category: allSections[index],);
              }
          ),
        ),
      ),
    );
  }
}
