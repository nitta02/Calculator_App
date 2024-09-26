// ignore_for_file: unused_local_variable, use_full_hex_values_for_flutter_colors

import 'package:calculator_app/utils/design.dart';
import 'package:calculator_app/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var inputvalue = '';
  var output = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(99, 97, 114, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 250,
                alignment: Alignment.bottomRight,
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xfffC2E2C5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      inputvalue.toString(),
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Text(
                      output.toString(),
                      style: const TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  CalButton(
                    title: 'AC',
                    onPress: () {
                      inputvalue = '';
                      output = '';
                      setState(() {});
                    },
                  ),
                  CalButton(
                    title: '+/-',
                    onPress: () {
                      inputvalue += '+/-';
                      setState(() {});
                    },
                  ),
                  CalButton(
                    title: '%',
                    onPress: () {
                      inputvalue += '%';
                      setState(() {});
                    },
                  ),
                  CalButton(
                    title: '/',
                    color: cnred,
                    onPress: () {
                      inputvalue += '/';
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
                      inputvalue = '${inputvalue}7';
                      setState(() {});
                    },
                  ),
                  CalButton(
                    title: '8',
                    onPress: () {
                      inputvalue = '${inputvalue}8';
                      setState(() {});
                    },
                  ),
                  CalButton(
                    title: '9',
                    onPress: () {
                      inputvalue = '${inputvalue}9';
                      setState(() {});
                    },
                  ),
                  CalButton(
                    title: 'x',
                    color: cnred,
                    onPress: () {
                      inputvalue += 'x';
                      setState(() {});
                    },
                  )
                ],
              ),
              Row(
                children: [
                  CalButton(
                    title: '4',
                    onPress: () {
                      inputvalue = '${inputvalue}4';
                      setState(() {});
                    },
                  ),
                  CalButton(
                    title: '5',
                    onPress: () {
                      inputvalue = '${inputvalue}5';
                      setState(() {});
                    },
                  ),
                  CalButton(
                    title: '6',
                    onPress: () {
                      inputvalue = '${inputvalue}6';
                      setState(() {});
                    },
                  ),
                  CalButton(
                    title: '-',
                    color: cnred,
                    onPress: () {
                      inputvalue += '-';
                      setState(() {});
                    },
                  )
                ],
              ),
              Row(
                children: [
                  CalButton(
                    title: '3',
                    onPress: () {
                      inputvalue = '${inputvalue}3';
                      setState(() {});
                    },
                  ),
                  CalButton(
                    title: '2',
                    onPress: () {
                      inputvalue = '${inputvalue}2';
                      setState(() {});
                    },
                  ),
                  CalButton(
                    title: '1',
                    onPress: () {
                      inputvalue = '${inputvalue}1';
                      setState(() {});
                    },
                  ),
                  CalButton(
                    title: '+',
                    color: cnred,
                    onPress: () {
                      inputvalue += '+';
                      setState(() {});
                    },
                  )
                ],
              ),
              Row(
                children: [
                  CalButton(
                    title: '0',
                    onPress: () {
                      inputvalue = '${inputvalue}0';
                      setState(() {});
                    },
                  ),
                  CalButton(
                    title: '.',
                    onPress: () {
                      inputvalue = '$inputvalue.';
                      setState(() {});
                    },
                  ),
                  CalButton(
                    title: 'DEL',
                    onPress: () {
                      inputvalue =
                          inputvalue.substring(0, inputvalue.length - 1);
                      setState(() {});
                    },
                  ),
                  CalButton(
                    title: '=',
                    color: cnBlue,
                    onPress: () {
                      qualValue();
                      setState(() {});
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void qualValue() {
    // Relace x with real operator *
    String finalOutput = inputvalue.replaceAll('x', "*");

    //Parser with help to do the operation like "2+(3*5)"
    Parser parser = Parser();

    //The parse() method of the Parser takes the finalUserInput (the mathematical expression) and converts it into an Expression object.
    //This object represents the equation that can be solved later.
    Expression expression = parser.parse(inputvalue);

    //The ContextModel is used to provide variables or any other extra information that the expression might need during evaluation (like values of unknown variables).
    //For basic arithmetic, it’s just needed as a placeholder
    ContextModel contextModel = ContextModel();

    //The evaluate() method computes the result of the expression. It uses the EvaluationType.REAL, meaning it evaluates the expression with real numbers (no complex numbers or symbolic math).
    // The contextModel provides any additional context if necessary, but here it is just needed to run the evaluation.
    double evaluate = expression.evaluate(EvaluationType.REAL, contextModel);

    //Store the answer
    output = evaluate.toString();
  }
}
