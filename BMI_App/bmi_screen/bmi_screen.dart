import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_project/shared/components/components.dart';

import '../bmi_result/bmi_result.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 120.0;
  var weight = 60;
  var age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CLCULATOR'),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale ? Colors.blue : Colors.grey[800],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/man.png'),
                                height: 90,
                                width: 90,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: !isMale ? Colors.blue : Colors.grey[800],
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/woman.png'),
                                height: 90,
                                width: 90,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                              '${height.round()}',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text(
                            'cm',
                            style: TextStyle(color: Colors.grey[500]),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          FloatingActionButton(
                            onPressed: ()
                            {
                              setState(() {
                                height > 81 ?  height-- : height = 80;
                              });
                            },
                            heroTag: 'height-',
                            mini: true,
                            child: Icon(Icons.remove),
                          ),
                          Expanded(
                            child: Slider(
                                value: height,
                                min: 80,
                                max: 220,
                                onChanged: (value) {
                                  setState(() {
                                    height = value;
                                  });
                                  print(value.round());
                                }),
                          ),
                          FloatingActionButton(
                            onPressed: ()
                            {
                              setState(() {
                                height < 219 ?  height++ : height = 220;
                              });
                            },
                            heroTag: 'height+',
                            mini: true,
                            child: Icon(Icons.add),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: ()
                                  {
                                    setState(() {
                                      weight --;
                                    });
                                  },
                                  heroTag: 'weight-',
                                  mini: true,
                                  child: Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  onPressed: ()
                                  {
                                    setState(() {
                                      weight ++;
                                    });
                                  },
                                  heroTag: 'weight+',
                                  mini: true,
                                  child: Icon(Icons.add),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[800]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: ()
                                  {
                                    setState(() {
                                      age --;
                                    });
                                  },
                                  heroTag: 'age-',
                                  mini: true,
                                  child: Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  onPressed: ()
                                  {
                                    setState(() {
                                      age ++;
                                    });
                                  },
                                  heroTag: 'age+',
                                  mini: true,
                                  child: Icon(Icons.add),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.purpleAccent,
              child: MaterialButton(
                onPressed: ()
                {
                  var Result = weight / pow(height / 100, 2);
                  print(Result.round());

                  navigateTo(context, BMIResult(
                    Result: Result.round(),
                    age: age,
                    isMale: isMale,
                  ));
                },
                height: 70,
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
