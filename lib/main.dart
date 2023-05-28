import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      const BallPage(),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 46, 99),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 37, 42, 52),
          title: const Center(
            child: Text(
              'Ask Me Anything',
            ),
          ),
        ),
        body: const Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset(
          'images/ball$ballNumber.png',
        ),
      ),
    );
  }
}
