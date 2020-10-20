import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  PlaceholderWidget();

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          new Container(
            width: 200.0,
            height: 200.0,
          ),
          new Container(
            alignment: new FractionalOffset(0.0, 0.0),
            decoration: new BoxDecoration(
              color: Colors.blue,
              border: new Border.all(
                color: Colors.blue.withOpacity(0.5),
                width: 5.0,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
