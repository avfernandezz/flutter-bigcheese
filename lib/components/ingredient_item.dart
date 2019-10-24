import 'package:flutter/material.dart';
import 'package:restaurant_bigcheese/constants.dart';

class IngredientItem extends StatelessWidget {
  final String imageSrc;
  final String name;
  final double price;

  IngredientItem({this.imageSrc, this.name, this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: kIngColor,
              border: Border.all(color: kIngColor),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'images/$imageSrc',
                height: 60,
              ),
            ),
          ),
          Text(
            name,
            style: kIngredientText,
          ),
          Text(
            '\$' + price.toString(),
            style: kPriceText,
          ),
        ],
      ),
    );
  }
}
