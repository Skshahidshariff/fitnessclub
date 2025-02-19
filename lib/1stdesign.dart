import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerScreen extends StatefulWidget {
  final String url;
  final String des;

  const YoutubePlayerScreen({
    super.key,
    required this.url,
    required this.des,
  });

  @override
  State<YoutubePlayerScreen> createState() => _YoutubePlayerScreenState();
}

class _YoutubePlayerScreenState extends State<YoutubePlayerScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final videoID = YoutubePlayer.convertUrlToId(widget.url);
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void download() {
    print('Download button pressed');
  }

  void favorite() {
    print('Favorite button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff373708),
                  Color(0x00ffe998),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: 200,
                  width: 320,
                  child: YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                    progressColors: const ProgressBarColors(
                      playedColor: Colors.red,
                      handleColor: Colors.white,
                    ),
                    onReady: () {
                      print('Player is Ready');
                    },
                    onEnded: (data) {
                      _controller.load('anotherVideoId'); // Replace with a valid video ID
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: download,
                    child: Container(
                      height: 50,
                      width: 140,
                      decoration: const BoxDecoration(color: Color(0xffffe998),borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.download),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Download',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: favorite,
                    child: Container(
                      height: 50,
                      width: 140,
                      decoration: const BoxDecoration(    color: Color(0xffffe998),borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.favorite),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Favorite',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Steps to be followed:',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    widget.des,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


// }
// class Desc extends StatefulWidget {
//   final String des;
//   const Desc({super.key,required this.des});

//   @override
//   State<Desc> createState() => _DescState();
// }

// class _DescState extends State<Desc> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text(widget.des),
//     );
//   }
// }