import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Stylish Widgets'),
          backgroundColor: Colors.teal, // Change app bar color
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GreetingWidget(
                message: 'Wellcome to Widgets', textColor: Colors.blue),
            GreetingWidget(
                message: 'Welcome to Stylish Widgets', textColor: Colors.green),
            CounterWidget(),
            WidgetTree(),
          ],
        ),
      ),
    );
  }
}

class GreetingWidget extends StatelessWidget {
  final String message;
  final Color textColor;

  GreetingWidget({required this.message, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Text(
        message,
        style: TextStyle(
            fontSize: 24.0, fontWeight: FontWeight.bold, color: textColor),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Counter Value: $counter',
          style: TextStyle(fontSize: 20.0, color: Colors.purple),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.lime, // Button color
            onPrimary: Colors.blue, // Text color
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: Text('Increment Counter', style: TextStyle(fontSize: 16.0)),
        ),
      ],
    );
  }
}

class WidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          GreetingWidget(
              message: 'Stylish Widget Tree - Level 1', textColor: Colors.red),
          GreetingWidget(
              message: 'Stylish Widget Tree - Level 2',
              textColor: Colors.amber),
          CounterWidget(),
        ],
      ),
    );
  }
}
