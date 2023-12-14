import "package:flutter/material.dart";

class IntialScreen extends StatelessWidget {
  IntialScreen({
    super.key,
    required String title,
  });
  String title = "Chess-V";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chess-V'),
      ),
      body: Row(),
    );
  }
}
