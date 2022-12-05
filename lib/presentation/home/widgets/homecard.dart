import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class NumberCard extends StatelessWidget {
  final int index;
  final String imageurl;
  const NumberCard({super.key, required this.index, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    int count = index + 1;
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 150,
                height: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image:  DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        imageurl),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              // left: -10,
              right: 90,
              child: BorderedText(
                strokeWidth: 8,
                strokeColor: whitecolor,
                child: Text(
                  count.toString(),
                  style: const TextStyle(
                      fontSize: 150,
                      fontWeight: FontWeight.bold,
                      color: blackcolor),
                ),
              ))
        ],
      ),
    );
  }
}
