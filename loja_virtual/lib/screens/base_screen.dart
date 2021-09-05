import 'package:flutter/material.dart';
import 'package:loja_virtual/custom_drawer/custom_drawer.dart';

class BaseScreen extends StatelessWidget {

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          drawer: CustomDrawer(),
          appBar: AppBar(
            title: const Text('Home'),
          ),
        ),
        Container(color: Colors.red,),
        Container(color: Colors.yellow,),
        Container(color: Colors.green,)
      ],
    );
  }
}
