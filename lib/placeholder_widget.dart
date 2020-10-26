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
              color: new Color.fromRGBO(255, 161, 0, 1),
              border: new Border.all(
                color: Colors.blue.withOpacity(0.5),
                width: 5.0,
              ),
              shape: BoxShape.circle,
            ),
          ),
          new Container(
              alignment: new FractionalOffset(0.6, 0.5),
              child: new Text('25 €  ',
                  style: new TextStyle(
                    fontSize: 80.0,
                    fontFamily: 'Roboto',
                    color: new Color.fromRGBO(251, 255, 0, 1),
                  ))),
        ],
      ),
    );
  }
}
