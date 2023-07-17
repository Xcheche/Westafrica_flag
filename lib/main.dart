import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 111, 159, 136),
        appBar: AppBar(
          title: const Text('Flags'),
          backgroundColor: Color.fromARGB(255, 62, 102, 82),
        ),
        body: const FlagPage(),
      ),
    ),
  );
}

class FlagPage extends StatefulWidget {
  const FlagPage({super.key});

  @override
  State<FlagPage> createState() => _FlagPageState();
}

class _FlagPageState extends State<FlagPage> {
  int leftFlagNumber = 1;
  int rightFlagNumber = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightFlagNumber = Random().nextInt(9) + 1;
                    leftFlagNumber = Random().nextInt(9) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/flag$leftFlagNumber.jpg'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftFlagNumber = Random().nextInt(9) + 1;
                    rightFlagNumber = Random().nextInt(9) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/flag$rightFlagNumber.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
