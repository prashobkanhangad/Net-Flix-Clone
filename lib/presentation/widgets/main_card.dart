import 'package:flutter/material.dart';

class MainCardTile extends StatelessWidget {
  const MainCardTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        width: 150,
        height: 280,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://www.themoviedb.org/t/p/w1280/5dDniQcwkvyvLNsqpQp4GRG5KGJ.jpg'))),
      ),
    );
  }
}
