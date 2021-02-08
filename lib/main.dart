import 'package:flutter/material.dart';
import 'Appbar.dart';
import 'Button.dart';
import 'Column.dart';
import 'Container.dart';
import 'HomePage.dart';
import 'Row.dart';
import 'Stack.dart';
import 'TextWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder> {
        'Text' : (BuildContext context) => TextWidget(),
        'Appbar': (BuildContext context) => AppBarWidget(),
        'Container' : (BuildContext context) => ContainerWidget(),
        'Column' : (BuildContext context) => ColumnWidget(),
        'Row' : (BuildContext context) => RowWidget(),
        'Button' : (BuildContext context) => ButtonWidget(),
        'Stack' : (BuildContext context) => StackWidget(),

      },
    );
  }
}

