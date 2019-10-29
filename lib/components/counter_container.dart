import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_bigcheese/model/Ingredient.dart';
import 'package:restaurant_bigcheese/model/IngredientData.dart';

class CounterContainer extends StatefulWidget {
  int quantity;
  Function onPress;
  String name;

  CounterContainer({this.quantity, this.onPress, this.name});

  @override
  _CounterContainerState createState() => _CounterContainerState();
}

class _CounterContainerState extends State<CounterContainer> {
  void decrementValue(Ingredient ingredient) {
    if (ingredient.quantity <= 0) {
      ingredient.quantity = 0;
    } else {
      ingredient.quantity--;
    }
  }

  void incrementValue(Ingredient ingredient) {
    ingredient.quantity++;
  }

  @override
  Widget build(BuildContext context) {
    var ingredientData = Provider.of<IngredientData>(context);

    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: <Widget>[
          RawMaterialButton(
            onPressed: () {
              final Ingredient ingredient =
                  ingredientData.getByName(widget.name);
              decrementValue(ingredient);
              ingredientData.updateIngredient(ingredient);
              print(ingredient);
            },
            child: Icon(
              Icons.remove,
              size: 15,
            ),
            constraints: BoxConstraints.tightFor(width: 40, height: 35),
            shape: CircleBorder(),
          ),
          Text(ingredientData.getByName(widget.name).quantity.toString()),
          RawMaterialButton(
            onPressed: () {
              final Ingredient ingredient =
                  ingredientData.getByName(widget.name);
              print("ANTES " + ingredient.quantity.toString());
              incrementValue(ingredient);
              ingredientData.updateIngredient(ingredient);
              print("DESPUES" + ingredient.quantity.toString());
            },
            child: Icon(
              Icons.add,
              size: 15,
            ),
            constraints: BoxConstraints.tightFor(width: 40, height: 35),
            shape: CircleBorder(),
          ),
        ],
      ),
    );
  }
}
