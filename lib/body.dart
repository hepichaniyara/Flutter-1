import 'package:flutter/material.dart';
import 'package:foodie/constant.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Container(
        width: 1400,
        height: 400,
        margin: EdgeInsets.symmetric(vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Text(
              "Burger".toUpperCase(),
              style: Theme.of(context).textTheme.headline1!.copyWith(
                color: kTextColor, fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "This is a description. This is a description. \nThis is a description. This is a description. \nThis is a description.",
              style: TextStyle(
                fontSize: 21,
                color: kTextColor.withOpacity(0.34),
              ),
            ),
            FittedBox(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF372930),
                  borderRadius: BorderRadius.circular(34),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.circle
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF372930),
                          shape: BoxShape.circle
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Get Started".toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(width: 15,)
                  ],
                ),
              ),
            ),
        ],
      ),
      ),
    );
  }
}
