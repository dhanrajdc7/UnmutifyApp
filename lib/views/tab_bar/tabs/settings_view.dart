import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:unmutify/utils/constants.dart';
import 'package:unmutify/utils/themes/theme_provider.dart';
import 'package:unmutify/views/cells/settings_cell.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:unmutify/views/screens/about_view.dart';
import 'package:unmutify/views/screens/features_view.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mailto/mailto.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {

    final themeProvider = Provider.of<ThemeProvider>(context);
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Settings"),),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24,),
                Image.asset('assets/images/appCard.png', width: size.width, fit: BoxFit.fitWidth,),
                SizedBox(height: 24,),
                Card(
                  child: Column(
                    children: [
                      SettingsCell(
                        iconData: Icons.star,
                        title: 'Features',
                        rightObj: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 20,),
                      ).onTap(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FeaturesView()),);
                      }),
                      SettingsCell(
                        iconData: Icons.dark_mode,
                        title: 'Dark Mode',
                        rightObj: CupertinoSwitch(
                          value: themeProvider.isDarkMode,
                          onChanged: (value) {
                            final provider = Provider.of<ThemeProvider>(context, listen: false);
                            provider.toggleTheme(value);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Card(
                  child: Column(
                    children: [
                      SettingsCell(
                        iconData: Mdi.heart,
                        title: 'Give rating to app',
                        rightObj: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 20,),
                      ).onTap(() {
                        writeReview();
                      }),
                      SettingsCell(
                        iconData: Mdi.gift,
                        title: 'Invite your friends',
                        rightObj: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 20,),
                      ).onTap(() {
                        shareInvite(appPortfolio);
                      }),
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Card(
                  child: Column(
                    children: [
                      SettingsCell(
                        iconData: Mdi.tagFaces,
                        title: 'Suggest a new emoji',
                        rightObj: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 20,),
                      ).onTap(() {
                        launchMailto("New Emoji Suggestion", "Hi,\nI want to suggest a new emoji.\n\nEmoji: \nMeaning: ");
                      }),
                      SettingsCell(
                        iconData: Mdi.autoFix,
                        title: 'Feature request',
                        rightObj: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 20,),
                      ).onTap(() {
                        launchMailto("Feature Suggestion", "Hi,\nI want to suggest a new feature.\n\n");
                      }),
                      SettingsCell(
                        iconData: Mdi.spider,
                        title: 'Report a bug',
                        rightObj: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 20,),
                      ).onTap(() {
                        launchMailto("Bug Report", "Hi,\nI want to report a bug.\n\n");
                      }),
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Card(
                  child: Column(
                    children: [
                      SettingsCell(
                        iconData: Mdi.information,
                        title: 'About',
                        rightObj: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 20,),
                      ).onTap(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AboutView()),);
                      }),
                      SettingsCell(
                        iconData: Mdi.security,
                        title: 'Terms & Privacy Policy',
                        rightObj: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 20,),
                      ).onTap(() {
                        _launchURL(privacyPolicy);
                      }),
                    ],
                  ),
                ),
                SizedBox(height: 16,),
                Text(
                  "Made with ❤️ by Dhanraj",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 24,)
              ],
            ),
          ),
        ),
      ),
    );
  }

  void launchMailto(String sub, String body) async {
    final mailtoLink = Mailto(
      to: ['dhanraj@duck.com'],
      subject: sub,
      body: body,
    );
    await launch('$mailtoLink');
  }

  void writeReview() {
    _launchURL(appPortfolio);
  }

  void shareInvite(String txt) async {
    await Share.share(txt);
  }

  void tweetApp() {
    const txt = "Hey! I am using @Unmutify to manage all important meetings in one place. Download Now: $appPortfolio";
    //_launchURL(twUrl);
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
