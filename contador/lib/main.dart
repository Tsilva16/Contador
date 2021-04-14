import 'package:flutter/material.dart';

void main () {
  runApp(
    MaterialApp(
      home: CounterScreen(),
    ),
  );
}
class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Meu Contador'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Sua contador esta em:', 
          style: 
          TextStyle(
            fontSize: 30,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 1
              ..color = Colors.blue[900]
          ),
          ),
          ),
          Center
            (child: Text(
              '$resultado', 
              style: TextStyle(
                fontSize: 45,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              setState(() {
                resultado -=1;
              });
            },
            child: Icon(Icons.exposure_minus_1),
          ),
          SizedBox(width: 50),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              print('Botao Pressionado');
              setState(() {
                resultado +=1;  
            });
          },
          child: Icon(Icons.exposure_plus_1),
          ),
        ],
      ),
    );
  }
}
