import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/main.dart';
class signup extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<signup> {
  String _email, _password;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFF73AEF5),
                  Color(0xFF61A4F1),
                  Color(0xFF4781E0),
                  Color(0xFF398AE5),
                ], stops: [0.3, 0.4, 0.7, 0.9]
                  ,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
            ),

          ),

          Container(
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(
              ),
              padding: EdgeInsets.symmetric(
                  vertical: 120.0
                  , horizontal: 40.0
              ),
              child: Form(key: formkey,
                child: Column
                  (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [Container(
                        alignment: Alignment.topLeft,
                        child:  IconButton(
                          icon: Icon(Icons.arrow_back,size: 30.0,),
                          color: Colors.black,
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                        Text("Signup ", style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold
                            ,
                            fontFamily: "OpenSans"
                            ,
                            letterSpacing: 1.5
                            ,
                            color: Colors.white)),
                      ],
                    ),
                    Name(),
                    Username(),
                    EmailBox(),
                    PassBox(),
                    Signup1()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container Facebox() {
    return Container(
                     height:50.0,
                     width: 50.0,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle
                           ,color: Colors.white
                         ,boxShadow:[ BoxShadow(
                       blurRadius: 6.0
                           ,color: Colors.black,
                       offset: Offset(0, 2)
                     )
                       ]
                         ,image: DecorationImage(fit: BoxFit.cover,
                       image: AssetImage("assets/social-facebook-icon.png")
                     )
                     ),
                   );
  }

  Container Googlebox() {
    return Container(
      height:50.0,
      width: 50.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle
          ,color: Colors.white
          ,boxShadow:[ BoxShadow(
          blurRadius: 6.0
          ,color: Colors.black,
          offset: Offset(0, 2)
      )
      ]
          ,image: DecorationImage( fit :BoxFit.cover ,
          image: AssetImage("assets/Google-1320568266385361674_512.png")
      )
      ),
    );
  }
  Container Signup1() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child:
      RaisedButton(
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)
        ),
        color: Colors.white
        ,
        child: Text("Signup", style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold
            ,
            fontFamily: "OpenSans"
            ,
            letterSpacing: 1.5
            ,
            color: Colors.black54)),),
    );
  }

  Column Name() {
    return Column(
      children: <Widget>[
        Container
          (alignment: Alignment.topLeft
            , child: Text("Name",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                  ,
                  fontFamily: "OpenSans"
                  ,
                  letterSpacing: 1.5,
                  color: Colors.white60),)
        )
        , SizedBox(height: 10.0,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(color: Colors.cyan),
          height: 60.0,
          child: TextFormField(
            onSaved: (input) => _email = input,
            keyboardType: TextInputType.name,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(Icons.supervised_user_circle, color: Colors.white
              ),
              hintText: "Enter your Fullname",
            ),
          ),
        )
      ],
    );
  }

  Column Date() {
    return Column(
      children: <Widget>[
        Container
          (alignment: Alignment.topLeft
            , child: Text("Date",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                  ,
                  fontFamily: "OpenSans"
                  ,
                  letterSpacing: 1.5,
                  color: Colors.white60),)
        )
        , SizedBox(height: 10.0,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(color: Colors.cyan),
          height: 60.0,
          child: TextFormField(
            onSaved: (input) => _email = input,
            keyboardType: TextInputType.datetime,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(Icons.date_range, color: Colors.white
              ),
              hintText: "Enter your Date",
            ),
          ),
        )
      ],
    );
  }

  Column Username() {
    return Column(
      children: <Widget>[
        Container
          (alignment: Alignment.topLeft
            , child: Text("Username",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                  ,
                  fontFamily: "OpenSans"
                  ,
                  letterSpacing: 1.5,
                  color: Colors.white60),)
        )
        , SizedBox(height: 10.0,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(color: Colors.cyan),
          height: 60.0,
          child: TextFormField(
            onSaved: (input) => _email = input,
            keyboardType: TextInputType.name,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(Icons.verified_user, color: Colors.white
              ),
              hintText: "Enter your Username",
            ),
          ),
        )
      ],
    );
  }

  Column EmailBox() {
    return Column(
      children: <Widget>[
        Container
          (alignment: Alignment.topLeft
            , child: Text("Email",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                  ,
                  fontFamily: "OpenSans"
                  ,
                  letterSpacing: 1.5,
                  color: Colors.white60),)
        )
        , SizedBox(height: 10.0,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(color: Colors.cyan),
          height: 60.0,
          child: TextFormField(
            onSaved: (input) => _email = input,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(Icons.email, color: Colors.white
              ),
              hintText: "Enter your email address",
            ),

          ),
        )
      ],
    );
  }

  Column PassBox() {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: Text("Password",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
                ,
                fontFamily: "OpenSans"
                ,
                letterSpacing: 1.5,
                color: Colors.white60),),
        )
        , SizedBox(height: 10.0,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(color: Colors.cyan),
          height: 60.0,
          child: TextFormField(
            onSaved: (input) => _password = input,
            obscureText: true,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(Icons.lock, color: Colors.white
              ),
              hintText: "Enter your Password",
            ),
          ),
        )
      ],
    );
  }
}