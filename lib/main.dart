import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int card1 = 0;
  int card2 = 0;
  int user = 10;
  int point = 0;

  void carde1() {
    setState(() {
      card1 = Random().nextInt(user + 10) + 1;
      if (card1 < user) {
        card2 = Random().nextInt(10) + user + 10;
      } else {
        card2 = Random().nextInt(user - 2) + 1;
      }

      if (user > card1) {
        user += card1;
        if (point < user) {
          point = user;
        }
      } else {
        reset();
      }
    });
  }

  void carde2() {
    setState(() {
      card1 = Random().nextInt(user + 10) + 1;
      if (card1 < user) {
        card2 = Random().nextInt(10) + user + 10;
      } else {
        card2 = Random().nextInt(user - 2) + 1;
      }

      if (user > card2) {
        user += card2;
        if (point < user) {
          point = user;
        }
      } else {
        reset();
      }
    });
  }

  void reset() {
    setState(() {
      user = 10;
      card1 = 0;
      card2 = 0;
    });
  }

  void rese() {
    setState(() {
      card1 = 0;
      card2 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PLAY GAME TO WIN PRIZE"),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUR5WHkCWAPw8FjiBxzBc8IrDdEs_KMieT2w&usqp=CAU"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0, color: Colors.black),
                        left: BorderSide(width: 1.0, color: Colors.black),
                        right: BorderSide(width: 1.0, color: Colors.black),
                        bottom: BorderSide(width: 1.0, color: Colors.black),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 100,
                    width: 100,
                    child: TextButton(
                      child: Text(
                        "$card1",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      onPressed: () {
                        carde1();
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0, color: Colors.black),
                        left: BorderSide(width: 1.0, color: Colors.black),
                        right: BorderSide(width: 1.0, color: Colors.black),
                        bottom: BorderSide(width: 1.0, color: Colors.black),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 100,
                    width: 100,
                    child: TextButton(
                      child: Text(
                        "$card2",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      onPressed: () {
                        carde2();
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.black),
                      left: BorderSide(width: 1.0, color: Colors.black),
                      right: BorderSide(width: 1.0, color: Colors.black),
                      bottom: BorderSide(width: 1.0, color: Colors.black),
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 50,
                  width: 200,
                  child: Center(
                    child: Text(
                      "$user",
                      style: TextStyle(fontSize: 20, color: Colors.orange),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.black),
                      left: BorderSide(width: 1.0, color: Colors.black),
                      right: BorderSide(width: 1.0, color: Colors.black),
                      bottom: BorderSide(width: 1.0, color: Colors.black),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 100,
                  width: 400,
                  child: Center(
                    child: Text(
                      "YOUR HIGH SCORE IS : $point",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.black),
                    left: BorderSide(width: 1.0, color: Colors.black),
                    right: BorderSide(width: 1.0, color: Colors.black),
                    bottom: BorderSide(width: 1.0, color: Colors.black),
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                height: 100,
                width: 100,
                child: TextButton(
                  child: Text(
                    "RESET",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  onPressed: () {
                    rese();
                  },
                ),
              ),
            ],
          )),
        ));
  }
}
