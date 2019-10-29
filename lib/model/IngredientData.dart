import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:restaurant_bigcheese/model/Ingredient.dart';

class IngredientData extends ChangeNotifier {
  List<Ingredient> _ingredients = [
    Ingredient(imageSrc: 'radish.png', name: 'Radish', price: 2.5, quantity: 0),
    Ingredient(imageSrc: 'olives.png', name: 'Olives', price: 4, quantity: 0),
    Ingredient(imageSrc: 'sauces.png', name: 'Sauces', price: .75, quantity: 0),
  ];

  UnmodifiableListView<Ingredient> get ingredients {
    return UnmodifiableListView(_ingredients);
  }

  Ingredient getByName(String name) {
    return _ingredients.firstWhere((ingredient) => ingredient.name == name);
  }

  void updateIngredient(Ingredient ingredient) {
    ingredient.updateQuantity(ingredient.quantity);
    notifyListeners();
  }

  int get ingredientCount {
    return _ingredients.length;
  }

  String get totalAmount {
    return _ingredients
        .fold(0, (total, current) => total + (current.price * current.quantity))
        .toString();
  }
}
