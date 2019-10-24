import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_bigcheese/constants.dart';
import 'package:restaurant_bigcheese/screens/ingredients_screen.dart';

class IntroScreen extends StatelessWidget {
  static const String id = 'intro_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFF5668),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TypewriterAnimatedTextKit(
                        onTap: () {
                          print("Tap Event");
                        },
                        text: ["Big cheese"],
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 50.0,
                            fontFamily: "LibreBaskerVille"),
                        textAlign: TextAlign.start,
                        alignment: AlignmentDirectional
                            .topStart // or Alignment.topLeft
                        ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 200,
                      child: Image.asset('images/flamenco-downloading-1.png'),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Freshness you can taste',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: kMainTextColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 20.0),
                      child: Text(
                        'Everything you need from conception to reception. Lowest price guaranteed!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: kMainTextColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            Navigator.pushNamed(context, IngredientsScreen.id);
                          },
                          child: Text(
                            'CREATE YOUR DISH',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          color: kBlueColor,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1.5,
                                  style: BorderStyle.solid,
                                  color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {},
                          child: Icon(Icons.play_arrow),
                        ),
                      ],
                    ),
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
