import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'constants.dart';
import 'components.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
var input='';

var output='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          input.toString(),
                          style: const TextStyle(color: Colors.white,fontSize: 30),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(output.toString(), style:const TextStyle(color: Colors.white,fontSize: 30))),
                    ],
                  ),
                ),
            ),
            SizedBox(height:15,),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Button(
                        title: 'AC',
                        color:Colors.red,
                        onPress: () {
                          input='';
                          output='';
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: 'DEL',
                        color: Colors.red,
                        onPress: () {
                         input=input.substring(0,input.length-1);
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: '%',
                        color: Color(0xffffa00a),
                        onPress: () {
                          input+='%';
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: '/',
                        color: Color(0xffffa00a),
                        onPress: () {
                         input+='/';
                          setState(() {
                            
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Button(
                        title: 'Sin',
                        color:const Color(
                          0xffffa00a,
                        ),
                        onPress: () {
                          input+='sin';
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: 'Cos',
                        color:const Color(
                          0xffffa00a,
                        ),
                        onPress: () {
                         input+='cos';
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: 'tan',
                        color:const Color(
                          0xffffa00a,
                        ),
                        onPress: () {
                          input+='tan';
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: 'π',
                        color:const Color(
                          0xffffa00a,
                        ),
                        onPress: () {
                         input+='π';
                          setState(() {
                            
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Button(
                        title: '1',
                        onPress: () {
                          input+='1';
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: '2',
                        onPress: () {
                         input+='2';
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: '3',
                        onPress: () {
                          input+='3';
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: 'X',
                        color:const Color(
                          0xffffa00a,
                        ),
                        onPress: () {
                         input+='*';
                          setState(() {
                            
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Button(
                        title: '4',
                        onPress: () {
                         input+='4';
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: '5',
                        onPress: () {
                         input+='5';
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: '6',
                        onPress: () {
                          input+='6';
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: '-',
                        color: Color(0xffffa00a),
                        onPress: () {
                         input+='-';
                          setState(() {
                            
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Button(
                        title: '7',
                        onPress: () {
                         input+='7';
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: '8',
                        onPress: () {
                          input+='8';
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: '9',
                        onPress: () {
                         input+='9';
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: '+',
                        color: Color(0xffffa00a),
                        onPress: () {
                         input+='+';
                          setState(() {
                            
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Button(
                        title: '.',
                        onPress: () {
                         input+='.';
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: '0',
                        onPress: () {
                         input+='0';
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: 'DEL',
                        onPress: () {
                         input=input.substring(0,input.length-1);
                          setState(() {
                            
                          });
                        },
                      ),
                      Button(
                        title: '=',
                        color: Color(0xffffa00a),
                        onPress: () {
                          EqualPress();
                          setState(() {
                            
                          });
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
    );
  }
  void EqualPress()
{
  Parser p=Parser();
  Expression exp=p.parse(input);
  ContextModel contextModel=ContextModel();
  double eval= exp.evaluate(EvaluationType.REAL,contextModel);
  output=eval.toString();
}
}



