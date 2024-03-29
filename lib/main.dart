import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_bigcheese/model/IngredientData.dart';
import 'package:restaurant_bigcheese/screens/checkout_screen.dart';
import 'package:restaurant_bigcheese/screens/ingredients_screen.dart';
import 'package:restaurant_bigcheese/screens/intro_screen.dart';

void main() => runApp(CheeseBurger());

class CheeseBurger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => IngredientData(),
      child: MaterialApp(
        initialRoute: IntroScreen.id,
        routes: {
          IntroScreen.id: (context) => IntroScreen(),
          IngredientsScreen.id: (context) => IngredientsScreen(),
          CheckoutScreen.id: (context) => CheckoutScreen(),
        },
      ),
    );
  }
}
