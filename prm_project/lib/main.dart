import 'package:flutter/material.dart';
import 'ui/widgets/ProductWidget.dart';
void main() {
  runApp(MyApp());
}

// StatelessWidget là những widget không thay đổi trạng thái trên giao diện
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Productwidget(),
        ),
      ),
    );
  }
}