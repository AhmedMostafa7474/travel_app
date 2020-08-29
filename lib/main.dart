import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/Destinaition.dart';
import 'package:travel_app/widget/Cites.dart';
import 'package:travel_app/widget/Hotels.dart';

import 'Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: login(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int sindex=0;
  int sTap=0;
  List<IconData>icon1=[
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.bicycle,

  ];

  Widget buildicon(int index)
  {
    return GestureDetector(
      onTap: (){
        setState(() {
          sindex=index;
        });
      },
      child: Container
        (
        height: 40.0 ,
        width: 40.0 ,
        decoration: BoxDecoration(
          color:sindex==index? Theme.of(context).accentColor:Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0)
        ),

        child: Icon(icon1[index]
        ,size: 25.5,
          color:sindex==index? Theme.of(context).primaryColor:Color(0xFFB4C1C4)
          ,),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      ListView(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        children:<Widget> [

                 Padding(
                   padding: const EdgeInsets.only(left: 20.0,right: 120.0),
                   child: Text("What to visit?",style: TextStyle(
                     fontSize: 30.0,
                     fontWeight: FontWeight.bold
                   ),),
                 ),
          SizedBox(
            height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               buildicon(0),
               buildicon(1),
               buildicon(2),
               buildicon(3)
             ],
            ),
          SizedBox(
            height: 30.0,
          ) ,
            cites(),
          SizedBox(
            height: 20.0,
          ) ,
           hotels(),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: sTap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search,size: 20.0,),title: SizedBox.shrink()),
          BottomNavigationBarItem(icon: Icon(Icons.archive,size: 20.0,),title: SizedBox.shrink()),
          BottomNavigationBarItem(icon: Icon(Icons.album,size: 20.0,),title: SizedBox.shrink()),
        ],
        onTap: (int value){
          setState(() {
            sTap=value;
          });
        },
      ),
    );
  }
}
