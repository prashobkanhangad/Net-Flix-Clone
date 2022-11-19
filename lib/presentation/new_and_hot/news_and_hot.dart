import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar:const PreferredSize(
          preferredSize: Size.fromHeight(50), child: Appbar_widget(title:'Hot and New' ,)),
      body:const Text('ScreenNewandhot'),
    );
  }
}
