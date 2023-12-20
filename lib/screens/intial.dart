// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";

class IntialScreen extends StatelessWidget {
  IntialScreen({
    super.key,
    required String title,
  });
  String title = 'Chess-V';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            width: width / 2, // Set a width
            height: height / 4, // Set a height
            color: Colors.red,
          ),
          Container(
            width: width / 2,
            height: height / 4,
            color: Colors.blue,
          ),
          Container(
            width: width / 2,
            height: height / 4,
            color: Colors.green,
          ),
        ]),
      ),
    );
  }
}
