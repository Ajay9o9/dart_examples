import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

extension Log on Object {
  void log() => devtools.log(toString());
}

enum Type { Cat, Dog }

abstract class CanRun {
  final Type type;

  const CanRun({required this.type});

  @mustCallSuper
  void run() {
    "Canrun run function is called ".log();
  }
}

class Cat extends CanRun {
  const Cat() : super(type: Type.Cat);
  @override
  void run() {
    super.run();
    // TODO: implement run
  }
}

class Dog extends CanRun {
  Dog() : super(type: Type.Dog);
}

void testIt() {
  final cat = Cat();
  cat.type.log();

  final dog = Dog();
  dog.type.log();
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    testIt();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
