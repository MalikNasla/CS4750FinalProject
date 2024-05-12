import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ftToM extends StatefulWidget {
  const ftToM({super.key});

  @override
  State<ftToM> createState() => _ftToMState();
}

class _ftToMState extends State<ftToM> {
  TextEditingController _controller = TextEditingController();
  String _result = '';

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onTextFieldChanged);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTextFieldChanged() {
    // You can add any additional validation or logic here
  }

  void _calculate() {
    setState(() {
      // Perform calculations here
      // For demonstration, we'll just double the input value
      double inputValue = double.tryParse(_controller.text) ?? 0.0;
      double result = inputValue/3.281;
      String rounded_result = result.toStringAsFixed(4);
      _result = 'Result: $rounded_result';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.inactiveGray,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 200, bottom: 20),
            child: Text(
              'Feet\n to\n Meters',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60, bottom: 5, right: 100, left: 100),
            color: Colors.white,
            child: TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Feet',
                labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onSubmitted: (_) => _calculate(),
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _calculate,
            child: Text('Calculate'),
          ),
          SizedBox(height: 20.0),
          Text(
            _result,
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}

