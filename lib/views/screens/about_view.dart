import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:mdi/mdi.dart';
import 'package:unmutify/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutView extends StatefulWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {

  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  );

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  Future<void> _initPackageInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("About"),),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24,),
                Card(
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        child: Image.asset('assets/images/appIcon.png', width: 70, fit: BoxFit.fitWidth, ),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Unmutify', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text('Version ${_packageInfo.version} (${_packageInfo.buildNumber})', style: TextStyle(color: Colors.grey, fontSize: 16),),
                          SizedBox(height: 5,),
                          Icon(Mdi.web, size: 20,).onTap((){ _launchURL(appPortfolio); }),
                        ],
                      )
                    ],
                  ).paddingAll(16),
                ),
                SizedBox(height: 24,),
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('About app creator', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),),
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(35)),
                            child: Image.asset('assets/images/profilePic.png', width: 70, fit: BoxFit.fitWidth, ),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Hi, I am Dhanraj!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              Text('I am the creator of this app', style: TextStyle(fontSize: 12),),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Icon(Mdi.instagram, size: 20,).onTap((){ _launchURL(devInstaUrl); }),
                                  SizedBox(width: 16,),
                                  Icon(Mdi.twitter, size: 20,).onTap((){ _launchURL(devTwUrl); }),
                                  SizedBox(width: 16,),
                                  Icon(Mdi.linkedin, size: 20,).onTap((){ _launchURL(devLkUrl); }),
                                  SizedBox(width: 16,),
                                  Icon(Mdi.youtube, size: 20,).onTap((){ _launchURL(devYtUrl); }),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Text(
                          "I created this app to help mute people to talk easily. Unmutify helps to talk with emojis & drawing. Mission of Unmutify is to help mute people to talk easily by reducing the communication gap using technology.\n\nYou can contact me anytime for questions, issues & suggestions. Fill the form through 'Suggest a feature' or 'Report a bug', so I can contact you directly."
                      ).paddingTop(12),
                    ],
                  ).paddingAll(16),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
