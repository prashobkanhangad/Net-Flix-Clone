import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';

class VideolistItem extends StatelessWidget {
  final index;
  const VideolistItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.accents[index % Colors.accents.length]),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.4),
                  radius: 25,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.volume_off,
                        size: 30,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    CircleAvatar(
                        radius: 23,
                        backgroundImage: NetworkImage(
                            'https://www.themoviedb.org/t/p/w1280/5dDniQcwkvyvLNsqpQp4GRG5KGJ.jpg')),
                    Height,
                    Height,
                    VideoActionWidget(icon: Icons.emoji_emotions, title: 'LOL'),
                    VideoActionWidget(icon: Icons.add, title: 'MY LIST'),
                    VideoActionWidget(icon: Icons.share, title: 'Share'),
                    VideoActionWidget(icon: Icons.play_arrow, title: 'Play')
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;

  const VideoActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 28,
          color: whitecolor,
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 15),
        ),
        Height,
        Height,
      ],
    );
  }
}
