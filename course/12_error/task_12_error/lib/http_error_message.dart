import 'package:flutter/material.dart';

class HttpErrorMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(16.0),
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.error_outline,
              size: 180.0,
              color: Colors.white,
            ),
            Text(
              'Sorry, looks like we could not connect',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline.copyWith(
                color: Colors.white
              ),
            )
          ],
        ),
      ),
    );
  }
}