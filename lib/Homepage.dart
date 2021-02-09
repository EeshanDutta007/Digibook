import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

List months = [
  'jan',
  'feb',
  'mar',
  'apr',
  'may',
  'jun',
  'jul',
  'aug',
  'sep',
  'oct',
  'nov',
  'dec'
];
DateTime _dateTime = DateTime.now();
String _date = _dateTime.day.toString() + ' ' + months[_dateTime.month];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 60, left: 25, bottom: 30),
                    child: Text('My Diary', style: TextStyle(fontSize: 35))),
                Padding(
                  padding: EdgeInsets.only(top: 30, right: 50),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.calendar_today), onPressed: null),
                      Text(_date, style: TextStyle(fontSize: 20))
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, bottom: 30),
              child: Text("Your Diet", style: TextStyle(fontSize: 25)),
            ),
            Align(
              alignment: Alignment.center,
              child: Card(
                  elevation: 10,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Container(
                      height: MediaQuery.of(context).size.height / 3 - 50,
                      width: MediaQuery.of(context).size.width - 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      child: VerticalDivider(
                                        thickness: 3,
                                        color: Colors.blue[100],
                                      ),
                                    ),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Images/eaten.png'),
                                          )),
                                    ),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                        text: ' 1127 ',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      TextSpan(
                                          text: 'kcal',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black54))
                                    ]))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50,
                                      child: VerticalDivider(
                                        thickness: 3,
                                        color: Colors.purple[100],
                                      ),
                                    ),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Images/burned.png'),
                                          )),
                                    ),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                        text: '   500 ',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      TextSpan(
                                          text: 'kcal',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black54))
                                    ]))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ))),
            ),
            Padding(
                padding: EdgeInsets.only(left: 25, top: 30),
                child: Text(
                  'Meals today',
                  style: TextStyle(fontSize: 25),
                )),
            Container(
              height: height / 3,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3 + 20,
                      width: width / 3 + 40,
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 25),
                            child: Card(
                              elevation: 8,
                              shadowColor: Colors.pink[100],
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: 70, right: 20),
                                        child: RichText(
                                          text: TextSpan(
                                              //style: DefaultTextStyle.of(context).style,
                                              children: [
                                                TextSpan(
                                                    text: 'Breakfast\n\n',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white)),
                                                TextSpan(
                                                    text:
                                                        'Bread,\nEggs,\nPancakes,\n',
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.white,
                                                    )),
                                                TextSpan(
                                                    text: '\n555',
                                                    style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    )),
                                                TextSpan(
                                                    text: ' kcal',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ))
                                              ]),
                                        )),
                                  ],
                                ),
                                height:
                                    MediaQuery.of(context).size.height / 3 - 50,
                                width:
                                    MediaQuery.of(context).size.width / 3 + 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(100),
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.pink[200],
                                        Colors.pink[100]
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    )),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(100),
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Image.asset(
                              'assets/Images/breakfast.png',
                              scale: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //////////////////////////////////////////////////////////////////////////////////////////
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3 + 20,
                      width: width / 3 + 40,
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 25),
                            child: Card(
                              elevation: 8,
                              shadowColor: Colors.pink[100],
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: 70, right: 20),
                                        child: RichText(
                                          text: TextSpan(
                                              //style: DefaultTextStyle.of(context).style,
                                              children: [
                                                TextSpan(
                                                    text: 'Lunch\n\n',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white)),
                                                TextSpan(
                                                    text:
                                                        'Salmon,\nVeggies,\nSalad,\n',
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.white,
                                                    )),
                                                TextSpan(
                                                    text: '\n1240',
                                                    style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    )),
                                                TextSpan(
                                                    text: ' kcal',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ))
                                              ]),
                                        )),
                                  ],
                                ),
                                height:
                                    MediaQuery.of(context).size.height / 3 - 50,
                                width:
                                    MediaQuery.of(context).size.width / 3 + 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(100),
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    gradient: LinearGradient(
                                      colors: [Colors.lightBlue, Colors.blue],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    )),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(100),
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Image.asset(
                              'assets/Images/lunch.png',
                              scale: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  /////////////////////////////////////////////////////////////////////////////////
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3 + 20,
                      width: width / 3 + 40,
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 25),
                            child: Card(
                              elevation: 8,
                              shadowColor: Colors.pink[100],
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: 70, right: 20),
                                        child: RichText(
                                          text: TextSpan(
                                              //style: DefaultTextStyle.of(context).style,
                                              children: [
                                                TextSpan(
                                                    text: 'Snack\n\n',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white)),
                                                TextSpan(
                                                    text: 'Toast,\nCoffee,\n',
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.white,
                                                    )),
                                                TextSpan(
                                                    text: '\n100',
                                                    style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    )),
                                                TextSpan(
                                                    text: ' kcal',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ))
                                              ]),
                                        )),
                                  ],
                                ),
                                height:
                                    MediaQuery.of(context).size.height / 3 - 50,
                                width:
                                    MediaQuery.of(context).size.width / 3 + 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(100),
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.green[200],
                                        Colors.green[400]
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    )),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(100),
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Image.asset(
                              'assets/Images/snack.png',
                              scale: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  /////////////////////////////////////////////////////////////////////////////////////////
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3 + 20,
                      width: width / 3 + 40,
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 25),
                            child: Card(
                              elevation: 8,
                              shadowColor: Colors.pink[100],
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: 70, right: 20),
                                        child: RichText(
                                          text: TextSpan(
                                              //style: DefaultTextStyle.of(context).style,
                                              children: [
                                                TextSpan(
                                                    text: 'Breakfast\n\n',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white)),
                                                TextSpan(
                                                    text:
                                                        'Bread,\nEggs,\nPancakes,\n',
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.white,
                                                    )),
                                                TextSpan(
                                                    text: '\n555',
                                                    style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    )),
                                                TextSpan(
                                                    text: ' kcal',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ))
                                              ]),
                                        )),
                                  ],
                                ),
                                height:
                                    MediaQuery.of(context).size.height / 3 - 50,
                                width:
                                    MediaQuery.of(context).size.width / 3 + 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(100),
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    gradient: LinearGradient(
                                      colors: [Colors.brown, Colors.brown[300]],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    )),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(100),
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Image.asset(
                              'assets/Images/dinner.png',
                              scale: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )));
  }
}