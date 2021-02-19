import 'package:flutter/material.dart';
import 'calculator.dart' ;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator()
    );
  }
}

class Calculator extends StatefulWidget{
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  String question = "";
  String answer = "";


  void operatorChecker(String x , String y, String operator){
  }


  @override
  Widget build(BuildContext context){
    final sizeW = MediaQuery.of(context).size.width;
    final sizeH = MediaQuery.of(context).size.height;

    return new Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text( question ,
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.5,
                    fontSize: 36.0)
            ),
          ),
          SizedBox(height: 5.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text( answer ,
            textAlign: TextAlign.end,
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 1.5,
              fontSize: 36.0)
            ),
          ),
          SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  setState(() {

                    question = "";
                    answer = "";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("C"),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    question = "";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("±"),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    question = "";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("%"),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
              InkWell(
                onTap: (){
                  print(question);
                  setState(() {
                    if(question.length != 0 && question[question.length-1] != " "){
                      question += " + ";
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("+"),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
            ],
          ),
          //mulai 2
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    question += "1";

                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("1"),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    question += "2";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("2"),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    question += "3";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("3"),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    if(question.length != 0 || question[question.length-1] != " "){
                      question += " - ";
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("-"),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
            ],
          ),
          //mulai 3
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    question += "4";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("4"),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    question += "5";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("5"),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    question += "6";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("6"),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    if(question.length != 0 || question[question.length-2] != " "){
                      question += " x ";
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("x"),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
            ],
          ),
          // mualai 4
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    question += "7";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("7"),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    question += "8";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("8"),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    question += "9";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("9"),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    if(question.length != 0 || question[question.length-2] != " "){
                      question += " / ";
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("/"),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
            ],
          ),Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    question += "0";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("0"),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    question += ".";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("."),
                  ),
                  width: sizeW / 4,
                  height: sizeW / 4,
                ),
              ),
              InkWell(
                onTap: (){
                  String ans = calculate(question);
                  if(ans.isNotEmpty){
                    setState(() {
                      answer = ans;
                    });
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(238, 238, 238, 1.0)
                  ),
                  child: Center(
                    child: Text("="),
                  ),
                  width: sizeW / 4 * 2,
                  height: sizeW / 4,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
