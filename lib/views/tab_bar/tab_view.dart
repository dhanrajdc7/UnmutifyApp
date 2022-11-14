import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:unmutify/utils/constants.dart';
import 'package:unmutify/utils/themes/theme_provider.dart';
import 'package:unmutify/views/tab_bar/tabs/drawify_view.dart';
import 'package:unmutify/views/tab_bar/tabs/emojify_view.dart';
import 'package:unmutify/views/tab_bar/tabs/settings_view.dart';
import 'package:unmutify/views/tab_bar/tabs/textify_view.dart';
import 'package:mdi/mdi.dart';

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {

  int _selectedIndex = 0;

  List<Widget> _tabs = [
    EmojifyView(),
    TextifyView(),
    DrawifyView(),
    SettingsView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            color: Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark ? Colors.black : Colors.white,
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              activeColor: Colors.indigo,
              iconSize: 24,
              duration: Duration(milliseconds: 400),
              padding: EdgeInsets.all(8),
              backgroundColor: Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark ? Colors.black : Colors.white,
              tabBackgroundColor: Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark ? Colors.grey.shade900 : Colors.grey.shade200,
              color: Colors.indigoAccent,
              tabs: [
                GButton(icon: Mdi.stickerEmoji, text: 'Emojify',),
                GButton(icon: Mdi.textToSpeech, text: 'Textify',),
                GButton(icon: Mdi.gesture, text: 'Drawify',),
                GButton(icon: Mdi.cogOutline, text: 'Settings',),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
