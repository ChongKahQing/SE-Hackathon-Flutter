import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:demo2/MusicPage/musicList.dart';
import 'package:flutter/material.dart';

class AttentionPage extends StatefulWidget {
  const AttentionPage({Key? key}) : super(key: key);

  @override
  State<AttentionPage> createState() => _AttentionPageState();
}

class _AttentionPageState extends State<AttentionPage> {
  bool isPlaying = false;
  double value = 0;
  final player = AudioPlayer();
  Duration? duration = Duration(seconds: 0);

  void initPlayer() async {
    await player.setSource(AssetSource("attention.mp3"));
    duration = await player.getDuration();
  }

  //init the player
  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent.withOpacity(0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: (() async {
              await player.pause();

              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MusicList(),
                  ));
            }),
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            height: 300.0,
            width: 300.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.promodj.com/afs/4b90f4aa4c45e1f2df0492ce6c2899de12%3Aresize%3A2000x2000%3Asame%3A18b2e0"),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 28, sigmaY: 28),
              child: Container(
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //setting the music cover
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.network(
                  "https://cdn.promodj.com/afs/4b90f4aa4c45e1f2df0492ce6c2899de12%3Aresize%3A2000x2000%3Asame%3A18b2e0",
                  width: 250.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Attention",
                style: TextStyle(
                    color: Colors.white, fontSize: 25, letterSpacing: 6),
              ),
              SizedBox(
                height: 20,
              ),
              const Text(
                "Charlie Puth",
                style: TextStyle(
                    color: Colors.white, fontSize: 13, letterSpacing: 6),
              ),
              //Setting the seekbar
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${(value / 60).floor()}: ${(value % 60).floor()}",
                    style: const TextStyle(color: Colors.white),
                  ),
                  Container(
                    width: 260.0,
                    child: Slider.adaptive(
                      onChangeEnd: (new_value) async {
                        setState(() {
                          value = new_value;
                          print(new_value);
                        });
                        await player.seek(Duration(seconds: new_value.toInt()));
                      },
                      min: 0.0,
                      value: value,
                      max: duration!.inSeconds.toDouble(),
                      onChanged: (value) {},
                      activeColor: Colors.white,
                    ),
                  ),
                  Text(
                    "${duration!.inMinutes} : ${duration!.inSeconds % 60}",
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              //setting the player controller
              const SizedBox(
                height: 60.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    child: InkWell(
                      onTapDown: (details) {
                        player.setPlaybackRate(0.5);
                      },
                      onTapUp: (details) {
                        player.setPlaybackRate(1);
                      },
                      child: Center(
                        child: Icon(
                          Icons.fast_rewind,
                          color: Colors.white,
                          size: 52,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    width: 60.0,
                    height: 60.0,
                    child: InkWell(
                      onTap: () async {
                        if (isPlaying) {
                          await player.pause();
                          setState(() {
                            isPlaying = false;
                          });
                        } else {
                          await player.resume();
                          player.onPositionChanged.listen((position) {
                            setState(() {
                              value = position.inSeconds.toDouble();
                            });
                          });
                          setState(() {
                            isPlaying = true;
                          });
                        }
                      },
                      child: Center(
                        child: Icon(
                          isPlaying ? Icons.pause : Icons.play_arrow,
                          color: Colors.white,
                          size: 62.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    child: InkWell(
                      onTapDown: (details) {
                        player.setPlaybackRate(2);
                      },
                      onTapUp: (details) {
                        player.setPlaybackRate(1);
                      },
                      child: Center(
                        child: Icon(
                          Icons.fast_forward,
                          color: Colors.white,
                          size: 52,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
