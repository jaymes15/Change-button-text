import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}



class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Stateful Widget",
      theme:  ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: homepage(),

    );
  }
}

class homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<homepage>{
  int dataToChange = 0;

  void changedata(){
    setState((){
      dataToChange += 1;
    });
  }


  void resetdata(){
    setState((){
      dataToChange = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stateful Widget",
        ),
      ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
               child: Text(
                "$dataToChange",
                 style: TextStyle(
                   fontSize: 24.0,
                   fontWeight: FontWeight.bold
                 ),
              ),
              ),
              RaisedButton(
                onPressed:changedata,
                  color: Colors.cyan,
                  splashColor: Colors.red,
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                child:Text(
                  "Click Me",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
              ),
              RaisedButton(
                  onPressed:resetdata,
                  color: Colors.red,
                  splashColor: Colors.cyan,
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                  child:Text(
                    "Reset",
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),

            ],
          ),
        ),
      );

  }
  }


