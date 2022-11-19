import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/home/widgets/homeappbar.dart';
import 'package:netflix/presentation/home/widgets/homecard.dart';
import 'package:netflix/presentation/home/widgets/homefirstsection.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Padding(
        padding: const EdgeInsets.symmetric (vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeFirstSection(),
              MainTitle(title: 'Released In The Past Year'),
              Height,
              LimitedBox(
                maxHeight: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (index) => const MainCardTile(),
                  ),
                ),
              ),
              Height,
              MainTitle(title: 'Trending Now'),
              Height,
              LimitedBox(
                maxHeight: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (index) => const MainCardTile(),
                  ),
                ),
              ),
                Height,
              MainTitle(title: 'Top 10 TV  Shows In India Today'),
              Height,
              LimitedBox(
                maxHeight: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (index) =>  NumberCard(index: index),
                  ),
                ),
              ),
                Height,
              MainTitle(title: 'South Indian Cinema'),
              Height,
              LimitedBox(
                maxHeight: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (index) => const MainCardTile(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
