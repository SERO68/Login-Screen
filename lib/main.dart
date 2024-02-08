import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Task',
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/back.jpg"), fit: BoxFit.cover),
        ),
        child: Center(
            child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(40.0)),
            const Text(
              "Brand",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 120,
                  fontFamily: 'aBerlari',
                  letterSpacing: 7),
            ),
            const Padding(padding: EdgeInsets.all(80.0)),
            const ElevatedButton(
              style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size(200, 50)),
                  backgroundColor: MaterialStatePropertyAll(Colors.white)),
              onPressed: hello,
              child: Text("SIGN UP",
                  style: TextStyle(color: Colors.blue, fontSize: 18)),
            ),
            const Padding(padding: EdgeInsets.all(8.0)),
            ElevatedButton(
                style: ButtonStyle(
                  fixedSize: const MaterialStatePropertyAll(Size(200, 50)),
                  side: MaterialStateProperty.all(
                      const BorderSide(color: Colors.white)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: hello,
                child: const Text("LOG IN",
                    style: TextStyle(color: Colors.white, fontSize: 18))),
            const Padding(padding: EdgeInsets.all(90.0)),
            Text(
              '${DateTime.now()}',
              style: const TextStyle(fontSize: 30, color: Colors.white),
            )
          ],
        )),
      ),
    );
  }
}

void hello() {}




