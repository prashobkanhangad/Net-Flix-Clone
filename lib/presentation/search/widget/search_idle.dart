import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/search/widget/title.dart';

final imageurl =
    'https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/a27VXm5c0aB9NWNwOxj1ygqkiD0.jpg';

class SearchIdelewidget extends StatelessWidget {
  const SearchIdelewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTexttitle(title: 'Top Searches'),
        Height,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return TopsearchItemTile();
              },
              separatorBuilder: (context, index) {
                return Height;
              },
              itemCount: 20),
        )
      ],
    );
  }
}

class TopsearchItemTile extends StatelessWidget {
  const TopsearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: screenwidth.width * 0.33,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageurl),
            ),
          ),
        ),
        Width,
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        )),
        Icon(
          CupertinoIcons.play_circle,
          color: whitecolor,
          size: 36,
        )
      ],
    );
  }
}
