import 'package:flutter/material.dart';
import 'package:restaurant_bigcheese/components/ingredient_item.dart';
import 'package:restaurant_bigcheese/constants.dart';

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
              padding: const EdgeInsets.all(20.0),
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
            Expanded(
              child: Divider(
                indent: 20,
                endIndent: 20,
                thickness: 3,
                color: Colors.grey.shade200,
              ),
            ),
            IngredientItem(
              imageSrc: 'radish.png',
              price: 5,
              name: 'Radish',
            ),
            IngredientItem(
              imageSrc: 'olives.png',
              price: 7,
              name: 'Olives',
            ),
            IngredientItem(
              imageSrc: 'sauces.png',
              price: 14,
              name: 'Sauces',
            ),
            IngredientItem(
              imageSrc: 'sauces.png',
              price: 14,
              name: 'Sauces',
            ),
            IngredientItem(
              imageSrc: 'sauces.png',
              price: 14,
              name: 'Sauces',
            ),
          ],
        ),
      ),
    );
  }
}
