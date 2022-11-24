// ignore_for_file: unnecessary_const

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Appbar_widget(
                title: 'Hot & New',
              )),
          titleSpacing: 0,
          backgroundColor: blackcolor,
          bottom: TabBar(
            isScrollable: true,
            indicator: BoxDecoration(
                color: whitecolor, borderRadius: BorderRadius.circular(40)),
            labelColor: blackcolor,
            unselectedLabelColor: whitecolor,
            labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            tabs: const [
              const SizedBox(
                height: 35.0,
                child: const Tab(text: '🍿 Coming Soon'),
              ),
              const SizedBox(
                height: 35.0,
                child: Tab(text: "🐔 Everyone's Watching"),
              ),
              const SizedBox(
                height: 35.0,
                child: const Tab(text: "Top 10"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [TabviewComingsoon(), TabviewEveryone(), TabviewTop10()],
        ),
      ),
    );
  }
}

class TabviewComingsoon extends StatelessWidget {
  const TabviewComingsoon({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    // log((screenwidth * 0.03).toString());
    final PaddingWidth = screenwidth * 0.03;
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: screenwidth * 0.1,
                    child: Column(
                      children: const [
                        Text(
                          'FEB',
                          style: TextStyle(color: whitecolor),
                        ),
                        Text('11',
                            style: TextStyle(
                                color: whitecolor,
                                fontSize: 31,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: (screenwidth * 0.9) - 20,
                        height: 160,
                        child: const Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/cs3LpA38BS2XDPfUzdgMB537XOo.jpg')),
                      ),
                      Height,
                      Container(
                        width: (screenwidth * 0.9) - 20,
                        height: 40,
                        child: Row(
                          children: [
                            const Text(
                              'Tall Girl 2',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.notifications_none_outlined,
                                  color: whitecolor,
                                ),
                                Text(
                                  'Remind Me',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                            Width,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.info_outline,
                                  color: whitecolor,
                                ),
                                Text(
                                  'Info',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                            Width
                          ],
                        ),
                      ),
                      Text('Coming On Friday'),
                      Height,
                      Container(
                        width: (screenwidth * 0.9) - 20,
                        child: const Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 20,
            );
          },
          itemCount: 10),
    );
  }
}

class TabviewEveryone extends StatelessWidget {
  const TabviewEveryone({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;

    return ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              width: screenwidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: screenwidth,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://www.themoviedb.org/t/p/original/3VE5mS5HDQ2FOxlMuzKCP14avAk.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Height,
                  Row(
                    children: [
                      Container(
                          width: screenwidth / 2.0,
                          child: const Text(
                            'KILOMETERS & KILOMETERS',
                            style: TextStyle(fontSize: 27),
                          )),
                      Width,
                      Column(
                        children: const [
                          Icon(
                            Icons.send,
                            color: whitecolor,
                            size: 27,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text('Share')
                        ],
                      ),
                      Width,
                      Column(
                        children: const [
                          Icon(
                            Icons.add,
                            color: whitecolor,
                            size: 27,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text('My List')
                        ],
                      ),
                      Width,
                      Column(
                        children: const [
                          Icon(
                            Icons.play_arrow,
                            color: whitecolor,
                            size: 27,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text('Play')
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Kilometers and Kilometers',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                    textAlign: TextAlign.justify,
                  ),
                  Height,
                  Text(
                    'Sudpenseful * Action Thriller * Action & Adventure',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Height;
        },
        itemCount: 10);
  }
}

class TabviewTop10 extends StatelessWidget {
  const TabviewTop10({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
