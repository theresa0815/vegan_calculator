import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'data.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'myTheme.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myTheme(),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime start = DateTime.now();
  int days = 365;

  bool _waterText = false;
  bool _grainText = false;
  bool _co2Text = false;
  bool _landText = false;
  bool _rainforestText = false;
  bool _animalsText = false;
  bool _fishText = false;
  bool _humansText = false;
  bool _wasteText = false;
  bool _antibioticsText = false;
  bool _healthText = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
            children: <Widget>[
              SizedBox(height: 15,),
              Row(
                children: <Widget>[
                  FlatButton(
                      color: Color.fromRGBO(242,242,242,1),
                      onPressed: (){
                        DatePicker.showDatePicker(context,
                            theme: DatePickerTheme(
                                containerHeight: 210.0,
                                backgroundColor: Color.fromRGBO(242,242,242,1),
                                cancelStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color.fromRGBO(241,90,36, 1),
                                ),
                                doneStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.black,
                                ),
                                itemStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                )
                            ),
                            showTitleActions: true,
                            minTime: DateTime(1900, 1, 1),
                            maxTime: DateTime.now(),
                            onConfirm: (date) {print('confirm $date');
                            start = date;
                            days = DateTime.now().difference(start).inDays;
                            print(days);
                            setState(() {});
                            },
                            currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                  width: 2,)
                            )),
                        child: AutoSizeText('$days',
                          maxLines: 1,
                          style: TextStyle(fontSize: 30,
                            letterSpacing: 10,
                          ),
                        ),
                      )
                  ),
                  Text("days",
                      style: TextStyle(fontSize: 30,
                        letterSpacing: 10,
                      )),
                ],
              ),

              Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,20,0),
                  child: Text("vegan",
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 40,
                        letterSpacing: 10,
                      )
                  )),

              SizedBox(height: 15,),
              Text("this is what you have achieved:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 5,
                  color: Color.fromRGBO(241,90,36, 1),
                ),),
              SizedBox(height: 50,),

              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border(top: BorderSide(
                        color: Colors.black,
                        width: 2
                    ))
                ),
                child: Text("RECOURCES SAVED",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.display4,
                ),),

              SizedBox(height: 15,),
              FlatButton(
                onPressed: () {setState(() => _waterText = !_waterText);},
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/waveElement 9.png',
                      height: 20,
                    ),
                    SizedBox(height: 5,),
                    AutoSizeText(((4163*days).toInt().toString()),
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.display1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("l water ",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.display2,),
                        _waterText ? Icon(Icons.arrow_downward):Icon(Icons.arrow_forward,
                          color: Color.fromRGBO(241,90,36, 1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              _waterText ? Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2
                    )),
                child: Text.rich(
                    TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: '$waterText',
                            style: TextStyle(fontSize: 17),),
                          TextSpan( text: '$waterSources',
                              style: TextStyle(color: Colors.blueGrey)
                          )
                        ]
                    )
                ),
              )
                  :SizedBox(height: 1,),
              SizedBox(height: 20,),



              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 6,
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: (){setState(() => _grainText = !_grainText);},
                      child: Column(
                          children: <Widget>[
                            AutoSizeText(((18.101*days).toInt()).toString(),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              style: Theme.of(context).textTheme.display1,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("kg grain ",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.display2,),
                                _grainText ? Icon(Icons.arrow_downward):Icon(Icons.arrow_forward,
                                  color: Color.fromRGBO(241,90,36, 1),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Image.asset('assets/grainElement 8.png',
                        alignment: Alignment.centerRight,
                      ),
                    ),),
                ],
              ),

              _grainText ? Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2
                    )),
                child: Text.rich(
                    TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: '$grainText',
                            style: TextStyle(fontSize: 17),),
                          TextSpan( text: '$grainSources',
                              style: TextStyle(color: Colors.blueGrey)
                          )
                        ]
                    )
                ),
              )
                  :SizedBox(height: 1,),



              SizedBox(height: 30,),
              Center(
                child: FlatButton(
                  onPressed: (){setState(() {
                    _co2Text = !_co2Text;
                  });} ,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      AutoSizeText(((9.0718*days).toInt()).toString(),
                        style: TextStyle(
                          fontSize: 50,
                          letterSpacing: 10,
                          color: Color.fromRGBO(241,90,36, 1),
                        ),
                        maxLines: 1,
                      ),
                      Text("CO2 equivalent",
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 10,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10,),
                      _co2Text ? Icon(Icons.arrow_downward):Icon(Icons.arrow_forward,
                        color: Color.fromRGBO(241,90,36, 1),
                      ),
                    ],
                  ),
                ),
              ),

              _co2Text ? Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2
                    )),
                child: Text.rich(
                    TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: '$co2Text',
                            style: TextStyle(fontSize: 17,
                            ),
                          ),
                          TextSpan( text: '$co2Sources',
                              style: TextStyle(color: Colors.blueGrey)
                          )
                        ]
                    )
                ),
              )
                  :SizedBox(height: 1,),



              SizedBox(height: 80,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border(top: BorderSide(
                        color: Colors.black,
                        width: 2
                    ))
                ),
                child: Text("DIRECT IMPACT ON DEFORESTRATION",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.display4,
                ),
              ),

              SizedBox(height: 20,),

              FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: (){setState(() {
                  _landText = !_landText;
                });},
                child: Column(
                  children: <Widget>[
                    AutoSizeText(((2.787 *days).toInt()).toString(),
                      style: Theme.of(context).textTheme.display1,
                      maxLines: 1,
                    ),
                    Text('m² of forested land',
                      style: Theme.of(context).textTheme.display2,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5,),
                    _landText ? Icon(Icons.arrow_downward):Icon(Icons.arrow_forward,
                      color: Color.fromRGBO(241,90,36, 1),
                    ),
                  ],
                ),
              ),

              _landText ? Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2
                    )),
                child: Text.rich(
                    TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: '$landText',
                            style: TextStyle(fontSize: 17),),
                          TextSpan( text: '$landSources',
                              style: TextStyle(color: Colors.blueGrey)
                          )
                        ]
                    )
                ),
              )
                  :SizedBox(height: 1,),

              SizedBox(height: 15,),
              Image.asset('assets/linesElement 13.png'),
              SizedBox(height: 30,),
              Row(
                children: <Widget>[
                  Expanded(
                      flex: 3,
                      child: Image.asset('assets/plantElement 10.png')),
                  Expanded(
                    flex: 4,
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: (){setState(() {
                        _rainforestText = ! _rainforestText;
                      });},
                      child: Column(
                        children: <Widget>[
                          Text('including:'),
                          AutoSizeText(((0.42 *days).toInt()).toString(),
                            style: Theme.of(context).textTheme.display1,
                            maxLines: 1,
                          ),
                          Text('cm² of rainforest',
                            style: Theme.of(context).textTheme.display2,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 5,),
                          _rainforestText ? Icon(Icons.arrow_downward):Icon(Icons.arrow_forward,
                            color: Color.fromRGBO(241,90,36, 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              _rainforestText ? Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2
                    )),
                child: Text.rich(
                    TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: '$rainforestText',
                            style: TextStyle(fontSize: 17),),
                          TextSpan( text: '$rainforestSources',
                              style: TextStyle(color: Colors.blueGrey)
                          )
                        ]
                    )
                ),
              )
                  :SizedBox(height: 1,),


              SizedBox(height: 80,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border(top: BorderSide(
                        color: Colors.black,
                        width: 2
                    ))
                ),
                child: Text("SAVED LIFES OF THE VOICELESS",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.display4,
                ),
              ),
              SizedBox(height: 30,),

              FlatButton(
                onPressed: () {
                  setState(() {
                    _animalsText = ! _animalsText;});
                },
                child: Column(
                  children: <Widget>[
                    AutoSizeText(((days).toInt()).toString(),
                      style: Theme.of(context).textTheme.display1,
                      maxLines: 1,
                    ),
                    Text("animal lifes",
                      style: Theme.of(context).textTheme.display2,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text("including:"),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: Image.asset('assets/chickenElement 20.png',
                          height: 90,)),
                        Expanded(child: Image.asset('assets/hogElement 19.png',
                          height: 90,)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              AutoSizeText(((0.032*days).toInt()).toString(),
                                style: Theme.of(context).textTheme.display1,
                                maxLines: 1,
                              ),
                              Text("chicken",
                                style: Theme.of(context).textTheme.display2,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              AutoSizeText(((0.0018*days).toInt()).toString(),
                                style: Theme.of(context).textTheme.display1,
                                maxLines: 1,
                              ),
                              Text("hogs",
                                style: Theme.of(context).textTheme.display2,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: _animalsText ? Icon(Icons.arrow_downward):Icon(Icons.arrow_forward,
                        color: Color.fromRGBO(241,90,36, 1),
                      ),
                    ),
                  ],
                ),
              ),

              _animalsText ? Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2
                    )),
                child: Text.rich(
                    TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: '$animalsText',
                            style: TextStyle(fontSize: 17),),
                          TextSpan( text: '$animalsSources',
                              style: TextStyle(color: Colors.blueGrey)
                          )
                        ]
                    )
                ),
              )
                  :SizedBox(height: 1,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset('assets/fishElement 18.png',
                    height: 250,
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      setState(() {
                        _fishText = !_fishText;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0,0,40,0),
                      child: Column(
                        children: <Widget>[
                          AutoSizeText(((0.03432*days).toInt()).toString(),
                            style: Theme.of(context).textTheme.display1,
                            maxLines: 1,
                          ),
                          Text("kg fish",
                            style: Theme.of(context).textTheme.display2,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _fishText ? Icon(Icons.arrow_downward):Icon(Icons.arrow_forward,
                              color: Color.fromRGBO(241,90,36, 1),),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              _fishText ? Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2
                    )),
                child: Text.rich(
                    TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: '$fishText',
                            style: TextStyle(fontSize: 17),),
                          TextSpan( text: '$fishSources',
                              style: TextStyle(color: Colors.blueGrey)
                          )
                        ]
                    )
                ),
              )
                  :SizedBox(height: 1,),


              SizedBox(height: 80,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border(top: BorderSide(
                        color: Colors.black,
                        width: 2
                    ))
                ),
                child: Text("YES YOU SAVED HUMANS TOO",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.display4,
                ),
              ),
              SizedBox(height: 30,),

              FlatButton(
                onPressed: (){
                  setState(() {
                    _humansText = !_humansText;
                  });
                },
                child: Column(
                  children: <Widget>[
                    AutoSizeText(((5 *days).toInt()).toString(),
                      style: Theme.of(context).textTheme.display1,
                      maxLines: 1,
                    ),
                    Text("hours no malnutrition for one person",
                      style: Theme.of(context).textTheme.display2,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _humansText ? Icon(Icons.arrow_downward):Icon(Icons.arrow_forward,
                        color: Color.fromRGBO(241,90,36, 1),),
                    ),
                  ],
                ),
              ),

              _humansText ? Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2
                    )),
                child: Text.rich(
                    TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: '$humansText',
                            style: TextStyle(fontSize: 17),),
                          TextSpan( text: '$humansSources',
                              style: TextStyle(color: Colors.blueGrey)
                          )
                        ]
                    )
                ),
              )
                  :SizedBox(height: 1,),

              Image.asset('assets/humanElement 21.png',
                height: 290,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          _antibioticsText = !_antibioticsText;
                        });},
                      child: Column(
                        children: <Widget>[
                          AutoSizeText(((47.38 *days).toInt()).toString(),
                            maxLines: 1,
                            style: Theme.of(context).textTheme.display1,
                          ),
                          Text("mg anti- biotics",
                            style: Theme.of(context).textTheme.display2,
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _antibioticsText ? Icon(Icons.arrow_downward):Icon(Icons.arrow_forward,
                              color: Color.fromRGBO(241,90,36, 1),),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          _wasteText = !_wasteText;
                        });},
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 50,),
                          AutoSizeText(((13.6 *days).toInt()).toString(),
                            maxLines: 1,
                            style: Theme.of(context).textTheme.display1,
                          ),
                          Text("kg of animal waste",
                            style: Theme.of(context).textTheme.display2,
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _wasteText ? Icon(Icons.arrow_downward) : Icon(Icons.arrow_forward,
                              color: Color.fromRGBO(241,90,36, 1),),
                          ),
                        ],
                      ),
                    ),)
                ],
              ),
              _antibioticsText ? Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2
                    )),
                child: Text.rich(
                    TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: '$antibioticsText',
                            style: TextStyle(fontSize: 17),),
                          TextSpan( text: '$antibioticsSources',
                              style: TextStyle(color: Colors.blueGrey)
                          )
                        ]
                    )
                ),
              )
                  :SizedBox(height: 1,),

              _wasteText ? Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2
                    )),
                child: Text.rich(
                    TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: '$wasteText',
                            style: TextStyle(fontSize: 17),),
                          TextSpan( text: '$wasteSources',
                              style: TextStyle(color: Colors.blueGrey)
                          )
                        ]
                    )
                ),
              )
                  :SizedBox(height: 1,),

              SizedBox(height: 80,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border(top: BorderSide(
                        color: Colors.black,
                        width: 2
                    ))
                ),
                child: Text("HEALTH",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.display4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40,20,40,20),
                child: Image.asset('assets/handElement 22.png',),
              ),

              FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: (){
                  setState(() {
                    _healthText = !_healthText;
                  });},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text.rich(
                        TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "saturated fat: ",
                                style: Theme.of(context).textTheme.display2,
                              ),
                              TextSpan(
                                text: ((33*days).toInt()).toString(),
                                style: Theme.of(context).textTheme.display1,
                              ),
                              TextSpan(
                                text: " g less",
                                style: Theme.of(context).textTheme.display2,
                              ),
                            ]
                        )
                    ),
                    SizedBox(height: 20,),
                    Text.rich(
                        TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "cholesterol: ",
                                style: Theme.of(context).textTheme.display2,
                              ),
                              TextSpan(
                                text: ((0.227*days).toInt()).toString(),
                                style: Theme.of(context).textTheme.display1,
                              ),
                              TextSpan(
                                text: " g less",
                                style: Theme.of(context).textTheme.display2,
                              ),
                            ]
                        )
                    ),
                    SizedBox(height: 20,),

                    Text.rich(
                        TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "fiber: ",
                                style: Theme.of(context).textTheme.display2,
                              ),
                              TextSpan(
                                text: ((14 *days).toInt()).toString(),
                                style: Theme.of(context).textTheme.display1,
                              ),
                              TextSpan(
                                text: " g more",
                                style: Theme.of(context).textTheme.display2,
                              ),
                            ]
                        )
                    ),
                    SizedBox(height: 20,),

                    Text.rich(
                        TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: ((602 *days).toInt()).toString(),
                                style: Theme.of(context).textTheme.display1,
                              ),
                              TextSpan(
                                text: "  less kcal",
                                style: Theme.of(context).textTheme.display2,
                              ),
                            ]
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _healthText ? Icon(Icons.arrow_downward) : Icon(Icons.arrow_forward,
                        color: Color.fromRGBO(241,90,36, 1),),
                    ),
                  ],
                ),
              ),

              _healthText ? Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2
                    )),
                child: Text.rich(
                    TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: '$healthText',
                            style: TextStyle(fontSize: 17),),
                          TextSpan( text: '$healthSources',
                              style: TextStyle(color: Colors.blueGrey)
                          )
                        ]
                    )
                ),
              )
                  :SizedBox(height: 1,),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  """As the available data variates depending on the source, the here provided information are more approximate values. Please note, that all provided information is without guarantee. However, the massive impact of livestock can not be denied. 
Contact: kuehne.welcome@gmail.com
                """,
                  textAlign: TextAlign.justify,
                ),
              )

            ]),
      ),
      backgroundColor: Color.fromRGBO(242,242,242,1),
      //backgroundColor: Color.fromRGBO(251,241,218,1),
    );
  }
}
