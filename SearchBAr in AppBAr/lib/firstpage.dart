import 'dart:ui';

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Icon _searchIcon = Icon(Icons.search);
  Widget _searchBar = Text("Search Bar AppBar");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _searchBar,
        leading:
            IconButton(icon: Icon(Icons.menu), onPressed: () => print("Menu")),
        actions: [
          IconButton(
              icon: _searchIcon,
              onPressed: () {
                setState(() {
                  if (this._searchIcon.icon == Icons.search) {
                    this._searchIcon = Icon(Icons.cancel);
                    this._searchBar = TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Search..."),
                        textInputAction: TextInputAction.go,
                        style: TextStyle(color: Colors.white, fontSize: 15.0));
                  } else {
                    this._searchIcon = Icon(Icons.search);
                    this._searchBar = Text("Search Bar AppBar");
                  }
                });
              }),
          IconButton(
              icon: Icon(Icons.more_vert), onPressed: () => print("more vert")),
        ],
        elevation: 10.0,
      ),
    );
  }
}
