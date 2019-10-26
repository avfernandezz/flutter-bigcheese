class Ingredient {
  String imageSrc;
  String name;
  double price;
  int quantity;

  Ingredient({this.imageSrc, this.name, this.price, this.quantity});

  void updateQuantity(int totalQuantity) {
    quantity = totalQuantity;
  }
}
