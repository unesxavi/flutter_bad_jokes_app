import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const JokesApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class JokesApp extends StatefulWidget {
  const JokesApp({super.key});

  @override
  State<JokesApp> createState() => _JokesAppState();
}

class _JokesAppState extends State<JokesApp> {
  List jokes = [
    {
      "joke":
          "“Once, my father came home and found me in front of a roaring fire. That made my father very mad, as we didn’t have a fireplace.”",
      "author": '—Victor Borge',
    },
    {
      "joke":
          "In Denver, the members of a Sunday­-school class were asked to set down their favorite biblical truths. One youngster laboriously printed: “Do one to others as others do one to you.”",
      "author": "—Lee Olson, The Denver Post",
    },
    {
      "joke":
          "Why did the soccer player take so long to eat dinner? Because he thought he couldn’t use his hands.",
      "author": "—Jhon Olson",
    },
    {
      "joke":
          "What did the policeman say to his hungry stomach? “Freeze. You’re under a vest.”",
      "author": "—Albert Capsic",
    },
  ];

  var myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Jokes",
            style: TextStyle(
              fontFamily: "HappyMonkey",
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                jokes[myIndex]['joke'],
                style: const TextStyle(
                  fontFamily: "HappyMonkey",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 28),
              Text(
                jokes[myIndex]['author'],
                style: const TextStyle(
                  fontFamily: "HappyMonkey",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (myIndex > 0) {
                          myIndex--;
                        }
                      });
                    },
                    backgroundColor: Colors.orange,
                    child: const Icon(
                      Icons.arrow_left,
                      size: 48,
                    ),
                  ),
                  const SizedBox(width: 20),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (myIndex < jokes.length - 1) {
                          myIndex++;
                        }
                      });
                    },
                    backgroundColor: Colors.orange,
                    child: const Icon(
                      Icons.arrow_right,
                      size: 48,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
