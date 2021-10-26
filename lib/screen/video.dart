import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video"),
      ),
      body: Center(
        child: BetterPlayer.file(
          "asset\video\y2mate.com - LISA  MONEY  SQUID GAME MASTER VERSION_1080p.mp4",
          betterPlayerConfiguration: BetterPlayerConfiguration(
            looping: true,
            autoPlay: true,
          ),
        ),
      ),
    );
  }
}
