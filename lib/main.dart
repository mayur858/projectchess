import 'package:flutter/material.dart';
import 'package:projectchess/screens/intial.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
);
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: IntialScreen(
        title: 'chess-v',
      ),
      // routes: ,
    );
  }
}
