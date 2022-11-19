import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/search/widget/title.dart';

final imageurl =
    'https://www.themoviedb.org/t/p/w1280/5dDniQcwkvyvLNsqpQp4GRG5KGJ.jpg';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTexttitle(title: 'Movies & Tv Shows'),
        Height,
        Expanded(
            child: GridView.count(
          crossAxisSpacing: 10,
          childAspectRatio: 2/3,
          mainAxisSpacing: 10,
          shrinkWrap: true,
          crossAxisCount: 3,
          children: List.generate(20, (index) => MainCard()),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 300,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: NetworkImage(imageurl), fit: BoxFit.cover)),
    );
  }
}
