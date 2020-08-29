
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/main.dart';
import 'package:travel_app/widget/SignUp.dart';
class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
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
                    Text("Sign in ", style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                        ,
                        fontFamily: "OpenSans"
                        ,
                        letterSpacing: 1.5
                        ,
                        color: Colors.white)),
                    EmailBox(),
                    PassBox(),
                    ForgetBox(),
                    LoginBox(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween
                      ,
                      children: [
                        SignupBox(),
                        Row(
                            children: [
                              Facebox(),
                              SizedBox(width: 10.0)
                              ,
                              Googlebox()
                            ]
                        )
                      ],
                    )                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container LoginBox() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child:
      RaisedButton(onPressed: signin,
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)
        ),
        color: Colors.white
        ,
        child: Text("Login", style: TextStyle(
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
  Container SignupBox() {
    return Container(
      alignment: Alignment.centerLeft,
      child:
      FlatButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => signup())),
          child: Text(
          "Sign up ?", style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold
          ,
          fontFamily: "OpenSans"
          ,
          letterSpacing: 1.5
          ,
          color: Colors.white)
      )),
    );
  }
  Container ForgetBox() {
    return Container(
      alignment: Alignment.centerRight,
      child:
      FlatButton(onPressed: () => print("Forget Password?"), child: Text(
          "Forget Password?", style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.bold
          ,
          fontFamily: "OpenSans"
          ,
          letterSpacing: 1.5
          ,
          color: Colors.white)
      )),
    );
  }

  Column EmailBox() {
    return Column(
      children: <Widget>[
        Container
        (   alignment: Alignment.topLeft
            ,child: Text("Email",
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

  Future<void> signin() async {
   // print(Text(_email));
    final formstate = formkey.currentState;
    if (formstate.validate()) {
      formstate.save();
      try {
      //FirebaseUser user = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password)) as FirebaseUser;
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
      }catch(e){

      }
    }
  }

  Container Facebox() {
    return Container(
      height:50.0,
      width: 50.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle
          ,color: Colors.blueAccent
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
}
