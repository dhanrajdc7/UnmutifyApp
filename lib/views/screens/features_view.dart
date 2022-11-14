import 'package:flutter/material.dart';
import 'package:unmutify/models/feature.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:unmutify/views/cells/feature_cell.dart';
import 'package:mdi/mdi.dart';

class FeaturesView extends StatefulWidget {
  
  const FeaturesView({Key? key}) : super(key: key);

  @override
  State<FeaturesView> createState() => _FeaturesViewState();
}

class _FeaturesViewState extends State<FeaturesView> {

  final List<Feature> allFeatures = [
    Feature(iconData: Mdi.stickerEmoji, title: "Emojify", subTitle: "Interact with 1000+ emojis"),
    Feature(iconData: Mdi.textToSpeech, title: "Textify", subTitle: "Convert your text into audio words"),
    Feature(iconData: Mdi.draw, title: "Drawify", subTitle: "Draw your thoughts on canvas"),
    Feature(iconData: Mdi.currencyUsdOff, title: "Free", subTitle: "Open Source & free to use"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Features'),),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24,),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Image.asset('assets/images/appIcon.png', width: 100, fit: BoxFit.fitWidth, ),
                ).center(),
                SizedBox(height: 16,),
                Text(
                  'Unmutify',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 16,),
                Column(
                  children: allFeatures.map((feature) => FeatureCell(iconData: feature.iconData, title: feature.title, subTitle: feature.subTitle)).toList(),
                ),
                SizedBox(height: 16,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
