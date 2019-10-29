import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_bigcheese/components/counter_container.dart';
import 'package:restaurant_bigcheese/constants.dart';
import 'package:restaurant_bigcheese/model/IngredientData.dart';

class IngredientItem extends StatefulWidget {
  String imageSrc;
  String name;
  double price;
  int quantity;

  IngredientItem(
      {@required this.imageSrc,
      this.name,
      this.price,
      @required this.quantity});

  @override
  _IngredientItemState createState() => _IngredientItemState();
}

class _IngredientItemState extends State<IngredientItem> {
  @override
  Widget build(BuildContext context) {
    String imageAsset = widget.imageSrc;
    return Consumer<IngredientData>(builder: (context, ingredientData, child) {
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
                  'images/$imageAsset',
                  height: 60,
                ),
              ),
            ),
            Text(
              widget.name,
              style: kIngredientText,
            ),
            CounterContainer(
              quantity: 0,
              name: widget.name,
              onPress: () {},
            ),
            Text(
              (ingredientData.getByName(widget.name).price *
                      ingredientData.getByName(widget.name).quantity)
                  .toString(),
              style: kPriceText,
            ),
          ],
        ),
      );
    });
  }
}

//class IngredientItems extends StatelessWidget {
//  final String imageSrc;
//  final String name;
//  final double price;
//  int quantity;
//
//  IngredientItems({this.imageSrc, this.name, this.price});
//
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: const EdgeInsets.all(8.0),
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//        children: <Widget>[
//          Container(
//            decoration: BoxDecoration(
//              color: kIngColor,
//              border: Border.all(color: kIngColor),
//              borderRadius: BorderRadius.all(
//                Radius.circular(20),
//              ),
//            ),
//            child: Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: Image.asset(
//                'images/$imageSrc',
//                height: 60,
//              ),
//            ),
//          ),
//          Text(
//            name,
//            style: kIngredientText,
//          ),
//          CounterContainer(
//            quantity: 0,
//          ),
//          Text(
//            '\$' + price.toString(),
//            style: kPriceText,
//          ),
//        ],
//      ),
//    );
//  }
//}
