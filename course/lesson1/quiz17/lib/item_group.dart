import 'package:flutter/material.dart';

class ItemGroup extends StatelessWidget {
  final String unit;

  ItemGroup({@required this.unit});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primaryColor: Colors.black12, accentColor: Colors.blue),
      child: Padding(
        padding: EdgeInsets.only(bottom: 15.0),
        child: Column(
          children: <Widget>[
            CustomTextField(),
            CustomDropdownButton(hint: unit,),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(),
          ),
          labelText: 'Input',
        ),
      ),
    );
  }
}

class CustomDropdownButton extends StatelessWidget {
  final String hint;
  
  CustomDropdownButton({@required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(width: 1.0, color: Colors.black54),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          hint: Text(hint),
          style: TextStyle(),
          onChanged: (value) {
            print('tapped');
          },
          items: <DropdownMenuItem>[
            DropdownMenuItem(
              child: Text('Item 1'),
              value: 'Item 1',
            ),
            DropdownMenuItem(
              child: Text('Item 2'),
              value: 'Item 2',
            ),
          ],
        ),
      ),
    );
  }
}
