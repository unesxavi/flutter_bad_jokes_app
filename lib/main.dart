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
    );
  }
}

class JokesApp extends StatefulWidget {
  const JokesApp({super.key});

  @override
  State<JokesApp> createState() => _JokesAppState();
}

class _JokesAppState extends State<JokesApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "Once, my father came home and found me in front of a roaring fire. That made my father very mad, as we didn’t have a fireplace",
              style: TextStyle(
                fontFamily: "HappyMonkey",
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 25),
            Text(
              "Victor Borge",
              style: TextStyle(
                fontFamily: "HappyMonkey",
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
