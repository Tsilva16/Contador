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
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Meu Contador'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Voce pressinou o botao:', style: TextStyle(
            fontSize: 24,
          ),
          ),
          ),
          Center
            (child: Text(
              '$resultado', 
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              setState(() {
                resultado -=1;
              });
            },
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              print('Botao Pressionado');
              setState(() {
                resultado +=1;  
            });
          },
          child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
