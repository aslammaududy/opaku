class Product {
  int? id;
  String? name;


  String? image;

  double? price;

  bool isSelected;

  Product(
      {this.id,
      this.name,
      this.price,
      this.isSelected = false,
      this.image});
}
