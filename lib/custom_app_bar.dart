import 'package:flutter/material.dart';
import 'package:foodie/constant.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
            BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            "../assets/logo.png",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5,),
          Text("Foodie".toUpperCase(), style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),),
          Spacer(),
          MenuItem(
            title: "Home",
          ),
          MenuItem(
            title: "about",
          ),
          MenuItem(
            title: "Pricing",
          ),
          MenuItem(
            title: "Contact",
          ),
          MenuItem(
            title: "Login",
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: FlatButton(
              onPressed: () {},
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              color: kPrimaryColor,
              child: Text(
              "Get Started".toUpperCase(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  const MenuItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(title.toUpperCase(), style: TextStyle(color: kTextColor.withOpacity(0.3), fontSize: 15,fontWeight: FontWeight.bold),),
      );
  }
}
