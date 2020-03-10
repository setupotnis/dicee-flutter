import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 5;
    return Container(
      child: SafeArea(
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: FlatButton(
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                  onPressed: () {
                    print('left button got pressed');
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  child: Image.asset('images/dice1.png'),
                  onPressed: () {
                    print('right button got pressed');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
