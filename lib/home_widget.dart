import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'list_widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    ShoppingList(product: [
      new Product('Oeufs', false, '25'),
      new Product('Farine', false, '25'),
      new Product('Viande', false, '50'),
      new Product('Fromage', false, '25'),
      new Product('Fraise', false, '25'),
      new Product('Poire', false, '50'),
      new Product('Pomme', false, '25'),
      new Product('Télevision', false, '25'),
      new Product('Orange', false, '50'),
      new Product('Jus de fruit', false, '25'),
      new Product('Coca Cola', false, '25'),
      new Product('Stylo', false, '50'),
      new Product('DVD', false, '25'),
      new Product('CD', false, '25'),
      new Product('Bouteille d"eau', false, '50'),
      new Product('Oeufs', false, '25'),
      new Product('Farine', false, '25'),
      new Product('Viande', false, '50'),
      new Product('Oeufs', false, '25'),
      new Product('Farine', false, '25'),
      new Product('Viande', false, '50'),
      new Product('Oeufs', false, '25'),
      new Product('Farine', false, '25'),
      new Product('Viande', false, '50'),
    ]),
    PlaceholderWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ma Liste de Course'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.line_style_sharp),
            title: new Text('Liste'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.euro_symbol),
            title: new Text('Caisse'),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
