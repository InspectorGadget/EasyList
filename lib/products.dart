import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products) {
    print('[ProductsWidget] constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductsWidget] build');
    return Column(
      children: products
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
