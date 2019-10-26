import 'package:flutter/material.dart';
import 'package:restaurant_bigcheese/components/dish_card.dart';
import 'package:restaurant_bigcheese/components/ingredient_item.dart';
import 'package:restaurant_bigcheese/components/ingredient_list.dart';
import 'package:restaurant_bigcheese/constants.dart';
import 'package:restaurant_bigcheese/screens/checkout_screen.dart';

class IngredientsScreen extends StatelessWidget {
  static const String id = 'ingredients_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: kMainTextColor,
                      size: 30,
                    ),
                  ),
                  Text(
                    ':',
                    style: TextStyle(fontSize: 40, color: kMainTextColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 10.0, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Choose Ingredients',
                    style: TextStyle(
                        fontSize: 25,
                        color: kMainTextColor,
                        fontWeight: FontWeight.w900),
                  ),
                  Icon(
                    Icons.tune,
                    color: kMainTextColor,
                    size: 30,
                  ),
                ],
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              thickness: 3,
              color: Colors.grey.shade200,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IngredientList(),
                  ],
                ),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: kBlueColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Trending today',
                        style: TextStyle(
                          letterSpacing: 3,
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DishCard(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            Navigator.pushNamed(context, CheckoutScreen.id);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Pay Now',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: kBlueColor,
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Text(
                                '\$44',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: kIngColor,
                                ),
                              )
                            ],
                          ),
                          color: Colors.white,
                        ),
                        FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            Navigator.pushNamed(context, CheckoutScreen.id);
                          },
                          child: Text(
                            '+',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: kBlueColor,
                            ),
                          ),
                          color: Colors.white,
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
                          child: Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                            size: 25,
                          ),
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

//IngredientItem(
//imageSrc: 'radish.png',
//price: 5,
//name: 'Radish',
//quantity: 0,
//),
//IngredientItem(
//imageSrc: 'olives.png',
//price: 7,
//name: 'Olives',
//quantity: 0,
//),
//IngredientItem(
//imageSrc: 'sauces.png',
//price: 14,
//name: 'Sauces',
//quantity: 0,
//),
