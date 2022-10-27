// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, avoid_unnecessary_containers, prefer_interpolation_to_compose_strings

import 'package:calculator_app/Components/buttons.dart';
import 'package:calculator_app/design.dart';
import 'package:calculator_app/main.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(Calculatorhome());
}

class Calculatorhome extends StatefulWidget {
  const Calculatorhome({super.key});

  @override
  State<Calculatorhome> createState() => _CalculatorhomeState();
}

class _CalculatorhomeState extends State<Calculatorhome> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userInput.toString(),
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        answer.toString(),
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        CalButton(
                          title: 'AC',
                          onPress: () {
                            userInput = '';
                            answer = '';
                            setState(() {});
                          },
                        ),
                        CalButton(
                          title: '+/-',
                          onPress: () {
                            userInput += '+/-';
                            setState(() {});
                          },
                        ),
                        CalButton(
                          title: '%',
                          onPress: () {
                            userInput += '%';
                            setState(() {});
                          },
                        ),
                        CalButton(
                          title: '/',
                          color: Color(0xffffa00a),
                          onPress: () {
                            userInput += '/';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CalButton(
                          title: '7',
                          onPress: () {
                            userInput += '7';
                            setState(() {});
                          },
                        ),
                        CalButton(
                          title: '8',
                          onPress: () {
                            userInput = userInput + '8';
                            setState(() {});
                          },
                        ),
                        CalButton(
                          title: '0',
                          onPress: () {
                            userInput = userInput + '0';
                            setState(() {});
                          },
                        ),
                        CalButton(
                          title: 'x',
                          color: Color(0xffffa00a),
                          onPress: () {
                            userInput += 'x';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CalButton(
                          title: '4',
                          onPress: () {
                            userInput = userInput + '4';
                            setState(() {});
                          },
                        ),
                        CalButton(
                          title: '5',
                          onPress: () {
                            userInput = userInput + '5';
                            setState(() {});
                          },
                        ),
                        CalButton(
                          title: '6',
                          onPress: () {
                            userInput = userInput + '6';
                            setState(() {});
                          },
                        ),
                        CalButton(
                          title: '-',
                          color: Color(0xffffa00a),
                          onPress: () {
                            userInput += '-';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CalButton(
                          title: '1',
                          onPress: () {
                            userInput = userInput + '1';
                            setState(() {});
                          },
                        ),
                        CalButton(
                          title: '2',
                          onPress: () {
                            userInput = userInput + '2';
                            setState(() {});
                          },
                        ),
                        CalButton(
                          title: '3',
                          onPress: () {
                            userInput = userInput + '3';
                            setState(() {});
                          },
                        ),
                        CalButton(
                          title: '+',
                          color: Color(0xffffa00a),
                          onPress: () {
                            userInput += '+';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CalButton(
                          title: '0',
                          onPress: () {
                            userInput = userInput + '0';
                            setState(() {});
                          },
                        ),
                        CalButton(
                          title: '.',
                          onPress: () {
                            userInput += '.';
                            setState(() {});
                          },
                        ),
                        CalButton(
                          title: 'DEL',
                          onPress: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                            setState(() {});
                          }, // DELETE
                        ),
                        CalButton(
                          title: '=',
                          color: Color(0xffffa00a),
                          onPress: () {
                            equalPress();

                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void equalPress() {
    String finalUserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression ex = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = ex.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
