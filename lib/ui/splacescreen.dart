import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:test/ui/signin.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({ Key? key }) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
_SplashscreenState(){
  new Timer(
    Duration(milliseconds: 2000), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context)=>SignIn()), (route) => false
          );
      });
    },
    );
}

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Container(alignment: Alignment.center,
          padding: EdgeInsets.only(left: 140),
            height:140,
            width: 140,
            child:const Center(
              child: Icon(Icons.android_outlined,size: 150,)
              ),
              
          ),
        ],
      )
     
    );
  }
}