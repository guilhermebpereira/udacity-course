// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'category.dart';

final _backgroundColor = Colors.green[100];
/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    final listView = ListView.builder(
        itemCount: _categoryNames.length,
        itemBuilder: (BuildContext context, int index) {
          return Category(
            color: _baseColors[index],
            iconLocation: Icons.cake,
            name: _categoryNames[index],
          );
        });

    final appBar = AppBar(
      title: Text(
        'Unit Converter',
        style: TextStyle(fontSize: 30.0, color: Colors.black),
      ),
      backgroundColor: _backgroundColor,
    );

    return Scaffold(
      appBar: appBar,
      body: Padding(
        child: listView,
        padding: EdgeInsets.all(8.0),
      ),
      backgroundColor: _backgroundColor,
    );
  }
}
