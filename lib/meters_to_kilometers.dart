import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mToKm extends StatefulWidget {
  const mToKm({super.key});

  @override
  State<mToKm> createState() => _mToKmState();
}

class _mToKmState extends State<mToKm> {
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
      double result = inputValue/1000;
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
              'Meters\n to\n Kilometers',
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
                labelText: 'Meters',
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


