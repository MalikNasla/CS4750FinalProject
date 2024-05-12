import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'centimeters_to_inches.dart';
import 'feet_to_meters.dart';
import 'inches_to_feet.dart';
import 'kilometers_to_miles.dart';
import 'meters_to_kilometers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Navigation Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> inputList = [];

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.inactiveGray,
      body: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 30),
            height: 70,
            // child: IconButton(
            //   onPressed: (){
            //
            //   },
            //   icon: Image.asset("assets/profile_icon.png"),
            // ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 30,bottom: 30),
              width: 200,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const cmToInch()),
                  );
                },
                child: Text(
                  "Centimeters to Inches",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(CupertinoColors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black),
                    ))
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 30,bottom: 30),
              width: 200,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const inToFeet()),
                  );
                },
                child: Text(
                  "Inches to Feet",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(CupertinoColors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black),
                    ))
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 30,bottom: 30),
              width: 200,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ftToM()),
                  );
                },
                child: Text(
                  "Feet to Meters",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(CupertinoColors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black),
                    ))
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 30,bottom: 30),
              width: 200,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const mToKm()),
                  );
                },
                child: Text(
                  "Meters to Kilometers",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(CupertinoColors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black),
                    ))
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 30,bottom: 30),
              width: 200,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const kmToMi()),
                  );
                },
                child: Text(
                  "Kilometers to Miles",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(CupertinoColors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black),
                    ))
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: inputList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(inputList[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
