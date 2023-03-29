import 'package:flutter/material.dart';

void main() {
  runApp(const AppCalculator());
}

class AppCalculator extends StatelessWidget {
  const AppCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Claculator(title: 'Calculator'),
    );
  }
}

class Claculator extends StatefulWidget {
  const Claculator({super.key, required this.title});
  final String title;

  @override
  State<Claculator> createState() => _ClaculatorState();
}

class _ClaculatorState extends State<Claculator> {
  TextEditingController conBil1 = TextEditingController();
  TextEditingController conBil2 = TextEditingController();
  double hasil=0, bil1=0, bil2=0;

  add() {
    setState(() {
      double bil1 = double.parse(conBil1.text);
      double bil2 = double.parse(conBil2. text);
      hasil = bil1 + bil2;
    });
  }
  sub() {
    setState(() {
      double bil1 = double.parse(conBil1.text);
      double bil2 = double.parse(conBil2. text);
      hasil = bil1 - bil2;
    });
  }
  mul() {
    setState(() {
      double bil1 = double.parse(conBil1.text);
      double bil2 = double.parse(conBil2. text);
      hasil = bil1 * bil2;
    });
  }
  div() {
    setState(() {
      double bil1 = double.parse(conBil1.text);
      double bil2 = double.parse(conBil2. text);
      hasil = bil1 / bil2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            runSpacing: 20,
            children: [
              Text(
                "Result : $hasil",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold
                ),
              ),
              TextField(
                controller: conBil1,
                decoration: InputDecoration(
                  label: Text("Enter first number"),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: conBil2,
                decoration: InputDecoration(
                  label: Text("Enter second number"),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              Center(
                child: Column(
                  children: [
                    ElevatedButton(onPressed: () {
                      add();
                    }, child: Text("ADD"), style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 18, 2, 75))),
                    ElevatedButton(onPressed: () {
                      sub();
                    }, child: Text("SUBSTRACT"), style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 18, 2, 75))),
                    ElevatedButton(onPressed: () {
                      mul();
                    }, child: Text("MULTIPLY"), style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 18, 2, 75))),
                    ElevatedButton(onPressed: () {
                      div();
                    }, child: Text("DIVIDE"), style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 18, 2, 75))),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
