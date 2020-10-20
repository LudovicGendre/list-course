import 'package:flutter/material.dart';

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.product}) : super(key: key);
  final List<Product> product;
  @override
  _ShoppingListState createState() {
    return new _ShoppingListState();
  }
}

class _ShoppingListState extends State<ShoppingList> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
      padding: new EdgeInsets.all(8.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          new Expanded(
              child: new ListView(
            padding: new EdgeInsets.symmetric(vertical: 8.0),
            children: widget.product.map((Product product) {
              return new ShoppingItemList(product);
            }).toList(),
          )),
          // new RaisedButton(
          //   onPressed: () {
          //     for (Product p in widget.product) {
          //       if (p.isCheck) print(p.name);
          //     }
          //   },
          //   child: new Text('Buy'),
          // )
        ],
      ),
    ));
  }
}

class ShoppingItemList extends StatefulWidget {
  final Product product;
  ShoppingItemList(Product product)
      : product = product,
        super(key: new ObjectKey(product));
  @override
  ShoppingItemState createState() {
    return new ShoppingItemState(product);
  }
}

class ShoppingItemState extends State<ShoppingItemList> {
  final Product product;
  ShoppingItemState(this.product);
  @override
  Widget build(BuildContext context) {
    return new ListTile(
        title: new Row(
      children: <Widget>[
        new Expanded(child: new Text(product.name)),
        new Expanded(child: new Text(product.price)),
        new Checkbox(
            value: product.isCheck,
            onChanged: (bool value) {
              setState(() {
                product.isCheck = value;
              });
            })
      ],
    ));
  }
}

class Product {
  String name;
  bool isCheck;
  String price;
  Product(this.name, this.isCheck, this.price);
}
