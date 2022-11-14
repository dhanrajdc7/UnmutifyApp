import 'package:flutter/material.dart';
import 'package:text_to_speech/text_to_speech.dart';
import 'package:unmutify/emojis/category.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:unmutify/utils/player_state.dart';
import 'package:unmutify/views/cells/emoji_cell.dart';

class DetailEmojiView extends StatefulWidget {

  final Category category;
  
  const DetailEmojiView({
    Key? key,
    required this.category
  }) : super(key: key);

  @override
  _DetailEmojiViewState createState() => _DetailEmojiViewState();
}

class _DetailEmojiViewState extends State<DetailEmojiView> {

  /// Text to Speech
  TextToSpeech tts = TextToSpeech();
  final String defaultLanguage = 'en-US';

  dynamic languages;
  late String language;

  double volume = 0.5;
  double pitch = 1.0;
  double rate = 0.5;

  /// Player State
  PlayerState playerState = PlayerState.stopped;

  @override
  void initState() {
    super.initState();
    initTts();
  }

  void initTts() {
    tts.setLanguage(defaultLanguage);
    tts.setVolume(volume);
  }

  @override
  void dispose() {
    super.dispose();
    tts.stop();
  }

  void speak(String msg) {
    tts.speak(msg);
  }

  @override
  Widget build(BuildContext context) {

    final orientation = MediaQuery.of(context).orientation;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(widget.category.name),),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: List.from(widget.category.items.map((sub) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sub.name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ).paddingAll(16),
                      GridView.builder(
                          itemCount: sub.items.length,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: (orientation == Orientation.portrait ? 4 : 6),
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12
                          ),
                          itemBuilder: (context, index) {
                            var emoji = sub.items[index];
                            return EmojiCell(
                                emoji: emoji
                            ).onTap((){
                              if (playerState != PlayerState.playing) {
                                showSnakbar(emoji.info);
                              }
                            });
                          }
                      ),
                      SizedBox(height: 16,)
                    ],
                  ),
                );
              })),
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
      onVisible: (){
        speak(msg);
      },
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void hideSnakbar() {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }
}
