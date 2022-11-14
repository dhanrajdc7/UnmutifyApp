import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:mdi/mdi.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter/services.dart';
import 'package:text_to_speech/text_to_speech.dart';
import 'package:provider/provider.dart';
import 'package:unmutify/utils/player_state.dart';
import 'package:unmutify/utils/themes/theme_provider.dart';
import 'package:unmutify/views/buttons/control_button.dart';
import 'package:unmutify/views/widgets/shake_widget.dart';

class TextifyView extends StatefulWidget {
  const TextifyView({Key? key}) : super(key: key);

  @override
  _TextifyViewState createState() => _TextifyViewState();
}

class _TextifyViewState extends State<TextifyView> {

  /// Text to Speech
  // final flutterTts = FlutterTts();
  TextToSpeech tts = TextToSpeech();
  final String defaultLanguage = 'en-US';

  double volume = 1.0;
  double pitch = 1.0;
  double rate = 0.5;

  /// Text
  String text = '';
  final myController = TextEditingController();

  /// Player State
  PlayerState playerState = PlayerState.stopped;

  /// TextField State
  bool clipboardState = true;

  /// Shake
  final playShakeKey = GlobalKey<ShakeWidgetState>();
  final pauseShakeKey = GlobalKey<ShakeWidgetState>();
  final stopShakeKey = GlobalKey<ShakeWidgetState>();
  final clearShakeKey = GlobalKey<ShakeWidgetState>();

  /// Progress Indicator
  var currentValue = 0.0;
  var wordCount = 0;
  var currentWord = 0;

  @override
  void initState() {
    super.initState();
    initTts();
  }

  @override
  void dispose() {
    tts.stop();
    myController.dispose();
    super.dispose();
  }

  void initTts() {
    tts.setLanguage(defaultLanguage);
    tts.setVolume(volume);
  }

  void unFocus() {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        unFocus();
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Text to Speech")),
          body: Container(
            margin: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                   TextField(
                     minLines: 5,
                     maxLines: 10,
                     controller: myController,
                     decoration: InputDecoration(
                       contentPadding: EdgeInsets.all(16),
                       hintText: 'Type something here',
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12)
                       ),
                       focusColor: Colors.blue,
                     ),
                     cursorColor: Colors.blue,
                     onChanged: (value) {
                       setState(() {
                         text = value;
                         wordCount = text.trim().split(' ').length;
                         if(value == '') {
                           clipboardState = true;
                         } else {
                           clipboardState = false;
                         }
                         print("Clipboard State: $clipboardState");
                       });
                     },
                   ).paddingSymmetric(vertical: 16, horizontal: 8),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ShakeWidget(
                          key: playShakeKey,
                          shakeCount: 3,
                          shakeOffset: 5,
                          shakeDuration: Duration(milliseconds: 500),
                          child: ControlButton(
                            title: "Play",
                            icon: Mdi.play,
                            clr: Colors.deepPurpleAccent.withOpacity(playerState == PlayerState.playing ? 0.7 : 1.0),
                            onPressed: () {
                              if (myController.text != '') {
                                unFocus();
                                tts.speak(myController.text);
                                showSnakbar("Speaking");
                              } else {
                                showSnakbar("No Content");
                              }
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: ShakeWidget(
                          key: pauseShakeKey,
                          shakeCount: 3,
                          shakeOffset: 5,
                          shakeDuration: Duration(milliseconds: 500),
                          child: ControlButton(
                            title: clipboardState ? "Paste" : "Clear",
                            icon: clipboardState ? Mdi.contentCopy : Mdi.close,
                            clr: clipboardState ? Colors.green : Colors.redAccent,
                            onPressed: () async {
                              ClipboardData? cdata = await Clipboard.getData(Clipboard.kTextPlain);
                              print("clipboard state: $clipboardState");
                              if(clipboardState) {
                                if(cdata?.text != null && cdata?.text != "") {
                                  setState(() {
                                    myController.text = cdata?.text ?? "";
                                    clipboardState = false;
                                  });
                                  showSnakbar("Text Pasted");
                                } else {
                                  showSnakbar("Empty Text");
                                }
                              } else {
                                if (myController.text != '') {
                                  setState(() {
                                    myController.text = '';
                                    text = '';
                                    clipboardState = true;
                                    unFocus();
                                  });
                                  showSnakbar("Text Cleared");
                                } else {
                                  clearShakeKey.currentState?.shake();
                                }
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showSnakbar(String msg) {
    var snackBar = SnackBar(
      content: Text(
        msg,
        textAlign: TextAlign.center,
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
