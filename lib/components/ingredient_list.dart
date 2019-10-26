import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_bigcheese/components/ingredient_item.dart';
import 'package:restaurant_bigcheese/model/IngredientData.dart';

class IngredientList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<IngredientData>(
      builder: (context, ingredientData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final ingredient = ingredientData.ingredients[index];
            return IngredientItem(
              imageSrc: ingredient.imageSrc,
              quantity: ingredient.quantity,
              name: ingredient.name,
              price: ingredient.price,
            );
          },
          itemCount: ingredientData.ingredientCount,
        );
      },
    );
  }
}
