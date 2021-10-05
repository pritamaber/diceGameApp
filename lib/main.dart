import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(DicePage());
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  var random = new Random();
  var random2 = new Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade600,
        appBar: AppBar(
          title: const Text('Dice Game'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (leftDiceNumber == rightDiceNumber)
                const Card(
                  elevation: 1.0,
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "TIE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              else if (leftDiceNumber > rightDiceNumber)
                Card(
                  elevation: 1.0,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 80,
                      ),
                      child: Row(
                        children: const [
                          Text(
                            "PLAYER 1 WON",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Icon(
                            Icons.celebration_rounded,
                            color: Colors.yellow,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              else
                Card(
                  elevation: 1.0,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 80,
                      ),
                      child: Row(
                        children: const [
                          Text(
                            "PLAYER 2 WON",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Icon(
                            Icons.celebration_rounded,
                            color: Colors.yellow,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image.asset("assets/images/dice$leftDiceNumber.png"),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 60.0,
                            ),
                            child: Row(
                              children: const [
                                Text(
                                  "Player 1",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                Icon(
                                  Icons.person,
                                  color: Colors.orange,
                                  size: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image.asset("assets/images/dice$rightDiceNumber.png"),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 60.0,
                            ),
                            child: Row(
                              children: const [
                                Text(
                                  "Player 2",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                Icon(
                                  Icons.person,
                                  color: Colors.yellow,
                                  size: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    leftDiceNumber = random.nextInt(6) + 1;
                    rightDiceNumber = random2.nextInt(6) + 1;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(25.0),
                  child: const Center(
                    child: Text(
                      "ROLL DICE ⚔️",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  width: 200.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.amber,
                  ),
                ),
                // Handle your callback
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    leftDiceNumber = 1;
                    rightDiceNumber = 1;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: const Center(
                    child: Text(
                      "RESTART",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  width: 200.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.lightGreenAccent,
                  ),
                ),
                // Handle your callback
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Developed by Pritam 🇮🇳 ",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
