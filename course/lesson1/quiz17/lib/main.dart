import 'package:flutter/material.dart';
import 'item_group.dart';

void main() {
  runApp(MaterialApp(
    home: ShoppingCart(),
  ));
}

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Energy'),
          backgroundColor: Colors.purple[200],
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  ItemGroup(unit: 'Joule'),
                  IconButton(
                    icon: Icon(Icons.thumbs_up_down),
                    onPressed: () { print('tapped');},
                  ),
                  ItemGroup(unit: 'Kilojoule')
                ],
              )
            ],
          ),
        ));
  }
}
