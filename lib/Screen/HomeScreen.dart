import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.asset("assets/videos/asad.mp4",
        videoPlayerOptions: VideoPlayerOptions())
      ..initialize().then((value) {
        setState(() {
          VideoProgressIndicator(
            _controller,
            allowScrubbing: true,
            colors: VideoProgressColors(
                backgroundColor: Colors.red,
                bufferedColor: Colors.black,
                playedColor: Colors.blueAccent),
          );
        });
      });
    super.initState();
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: 300,
        height: 300,
        child: _controller.value.isInitialized
            ? VideoPlayer(_controller)
            : Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.value.isPlaying
              ? _controller.pause()
              : _controller.play();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
