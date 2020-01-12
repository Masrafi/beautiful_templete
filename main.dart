import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  double _value = 0.0;

  onChanged(double value) {
    setState(() {
      _value = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Sequence Animator Demo'),
        ),
        body: SafeArea(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,  //center hbe full view
            children: <Widget>[

              Icon(
                Icons.wb_sunny,
                size: 250.0,
                color: Colors.green,
              ),
              Row(
                children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 20.0,
                    width: 250.0,
                    child: Slider(
                        value: _value,
                        onChanged: onChanged),
                  ),
                ),

                Text(
                  '504/960',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),

              ],),


                
                    Expanded(child:
                    Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              color: Color(0xFF54BDDA),
                              width: 170.0,
                              height: 80.0,
                              child: ListTile(
                                title: Text(
                                    'Boomerang',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15.0
                                    )
                                ),
                              ),
                            )
                          ],
                        )
                        ),
                        Expanded(child:
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              color: Color(0xFF54BDDA),
                              width: 170.0,
                              height: 80.0,
                              child: ListTile(
                                title: Text(
                                    'Loop',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15.0
                                    )
                                ),
                              ),
                            )
                          ],
                        )
                        ),
                      ],
                    )
                      ,),


                    Expanded(child:
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Color(0xFFD34749),
                          width: 350.0,
                          height: 80.0,
                          child: ListTile(
                            title: Text(
                                'Change Colour',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15.0
                                )
                            ),
                          ),
                        )
                      ],
                    )
                      ,),


                    Expanded(child:
                    Row(
                      children: <Widget>[
                        Expanded(child:
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              color: Color(0xFFEC7063),
                              width: 170.0,
                              height: 80.0,
                              child: ListTile(
                                title: Text(
                                    'Play/Pause',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    )
                                ),
                              ),
                            ),
                          ],
                        )
                        ),
                        Expanded(child:
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              color: Color(0xFF28B463),
                              width: 170.0,
                              height: 80.0,
                              child: ListTile(
                                title: Text(
                                    'Stop',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15.0
                                    )
                                ),
                              ),
                            )
                          ],
                        )
                        ),
                      ],
                    )
                      ,),








            ],
          ),
        ),
      ),
    );
  }
}

