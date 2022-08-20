import 'package:facebook_ui_basic/models/video_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Videos',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                child: Tooltip(
                  message: 'Play Video Automatically',
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        this.isSwitched = value;
                        print(this.isSwitched);
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.black12,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: videoData.length,
            itemBuilder: (context, i) => Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: videoData[i].avatarOnPressed,
                      icon: CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage(videoData[i].avatarImage),
                      )
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                videoData[i].name,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () => {},
                                child: Text(
                                  'Follow',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            spacing: 10,
                            children: [
                              Text(
                                videoData[i].time,
                                style: TextStyle(fontSize: 18),
                              ),
                              Icon(Icons.public),
                            ],
                          ),
                        ],
                      )
                    ),
                    IconButton(
                      iconSize: 30,
                      onPressed: videoData[i].moreOnPressed,
                      icon: Icon(Icons.more_horiz_outlined),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      YoutubePlayerControllerProvider(
                        controller: YoutubePlayerController(
                          initialVideoId: videoData[i].videoPostLink ?? '',
                          params: YoutubePlayerParams(
                            autoPlay: false,
                            mute: false,
                            showControls: true,
                            showFullscreenButton: false,
                          ),
                        ),
                        child: YoutubePlayerIFrame(
                          aspectRatio: 16 / 9,
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          videoData[i].videoPostTitle,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: videoData[i].likeOnPressed,
                          icon: Icon(Icons.thumb_up_alt_outlined),
                        ),
                        Text(
                          '12',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: videoData[i].commentOnPressed,
                          icon: Icon(Icons.message_outlined),
                        ),
                        Text(
                          '12',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: videoData[i].shareOnPressed,
                          icon: Icon(Icons.share_outlined),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          )
        )
      ],
    );
  }
}

