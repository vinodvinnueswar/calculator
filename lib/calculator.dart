
  import 'package:flutter/material.dart';



class Calculator extends StatefulWidget {
const Calculator({Key? key}) : super(key: key);

@override
State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calButton(String btnText, Color btnColor, Color txtcolor) {
    return ElevatedButton(onPressed: () => {Caluclate(btnText) },


        style: ElevatedButton.styleFrom(

          fixedSize: Size(70, 70),
          shape: CircleBorder(),
          primary: btnColor,
        ),
        child: Text(btnText, style: TextStyle(fontSize: 20, color: txtcolor),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Calculator"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(

                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        text,
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.white,
                          fontSize: 80, fontWeight: FontWeight.bold)
                    ),

                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calButton("AC", Colors.grey, Colors.black),
                  calButton("+/-", Colors.grey, Colors.black),
                  calButton("%", Colors.grey, Colors.black),
                  calButton("/", Colors.orange, Colors.black),


                ],
              ),
              SizedBox(width: 20, height: 20,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    calButton("9", Colors.grey, Colors.black),
                    calButton("8", Colors.grey, Colors.black),
                    calButton("7", Colors.grey, Colors.black),
                    calButton("+", Colors.orange, Colors.black),

                  ]
              ),
              SizedBox(width: 20, height: 20,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    calButton("6", Colors.grey, Colors.black),
                    calButton("5", Colors.grey, Colors.black),
                    calButton("4", Colors.grey, Colors.black),
                    calButton("-", Colors.orange, Colors.black),

                  ]
              ),
              SizedBox(width: 20, height: 20,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    calButton("3", Colors.grey, Colors.black),
                    calButton("2", Colors.grey, Colors.black),
                    calButton("1", Colors.grey, Colors.black),
                    calButton("x", Colors.orange, Colors.black),

                  ]
              ),
              SizedBox(width: 20, height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}


                    , child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 40, 10),
                      child: Text("0",
                        style: TextStyle(color: Colors.white, fontSize: 35),),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: Colors.grey,
                    ),

                  ),
                  calButton(".", Colors.grey, Colors.black),
                  calButton("=", Colors.grey, Colors.black),

                ],


              )


            ]
        ),

      ),
    );
  }


  int firstNumber = 0;
  int secondNumber = 0;
  String result = "";
  String text = "";
  String operator = "";

  void Caluclate(String btntext) {
    if (btntext == "C") {
      result = "";
      text = "";
      firstNumber = 0;
      secondNumber = 0;
    }
    else
    if (btntext == "+" || btntext == "-" || btntext == "*" || btntext == "/") {
      firstNumber = int.parse(text);
      result = "";
      operator = btntext;
    }
    else if (btntext == "=") {
      secondNumber = int.parse(text);
      if (operator == "+") {
        result = (firstNumber + secondNumber).toString();
      }
      if (operator == "-") {
        result = (firstNumber - secondNumber).toString();
      }
      if (operator == "*") {
        result = (firstNumber * secondNumber).toString();
      }
      if (operator == "/") {
        result = (firstNumber ~/ secondNumber).toString();
      }
    } else {
      result = int.parse(text + btntext).toString();
    }

    setState(() {
      text=result;
    });
  }
}




