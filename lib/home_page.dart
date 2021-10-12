import 'package:flutter/material.dart';
import 'package:foodie/body.dart';
import 'package:foodie/custom_app_bar.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("../assets/img.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget> [
          CustomAppBar(),
          Spacer(),
          Body(),
          Spacer(flex: 2,)
        ],
      ),
    );
  }

}