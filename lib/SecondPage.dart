import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key, required this.note, required this.color});

  final String note;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("دفتر اليوميات"),
      ),
      body: Center(
        child: Text(note),
      ),
    );
  }
}
