import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast_laugh/widget/videolistitem.dart';

class ScreenFastlaugh extends StatelessWidget {
  const ScreenFastlaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(
                  10,
                  (index) => VideolistItem(
                        index: index,
                      ))),
        ),
      ),
    );
  }
}
