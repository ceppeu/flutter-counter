import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Número de clicks',
                style: _estiloTexto,
              ),
              Text(
                '$_counter',
                style: _estiloTexto,
              ),
            ],
          ),
        ),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _restart),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _substract),
        SizedBox(width: 20.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add)
      ],
    );
  }

  void _add() {
    setState(() {
      _counter++;
    });
  }

  void _substract() {
    setState(() {
      _counter--;
    });
  }

  void _restart() {
    setState(() {
      _counter = 0;
    });
  }
}
