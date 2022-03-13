

import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;
 var _passwordVisible = false;
   FirebaseAuth auth = FirebaseAuth.instance;

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body:
       Column(
         
         children: [
         Container(
           height: 200.0,
           width: MediaQuery.of(context).size.width,
           child: Center(
             child: Text("Sign In",style: TextStyle(
               fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white
             ),)
             ),
           
           decoration: BoxDecoration(
             color: Colors.green,
             borderRadius: BorderRadius.only(
               bottomLeft: Radius.circular(50),
               bottomRight: Radius.circular(50),
             )
           ),
         ),
         SizedBox(height:70),
           Expanded(
             child: Container(
               decoration: BoxDecoration(
                //  color: Colors.white,
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(28.0),
                   topRight: Radius.circular(28.0),
                 ),
               ),
               child: Padding(
                 padding: EdgeInsets.all(20.0),
                 child: SingleChildScrollView(
                   scrollDirection: Axis.vertical,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      
                       Row(
                         children: [
                          
                           Expanded(
                             child: TextField(
                               controller: _emailController,
                               
                               decoration: InputDecoration(
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(30)
                                 ),                                  
                                  label: Text('Email'),
                                 hintStyle: TextStyle(
                                   fontSize: 14.0,
                                   color: Color(0xFF414041),
                                 ),
                                
                                 labelStyle: TextStyle(
                                   fontSize: 20.0,
                                   color: Colors.green,
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                       SizedBox(
                         height: 30.0,
                       ),
                       Row(
                         children: [                          
                           Expanded(
                             child: 
                             TextFormField(
       keyboardType: TextInputType.text,
       controller: _passwordController,
       obscureText: !_passwordVisible,
       decoration: InputDecoration(
            label: Text('Password'),
                                 hintStyle: TextStyle(
                                   fontSize: 14.0,
                                   color: Color(0xFF414041),
                                 ),
                                
                                 labelStyle: TextStyle(
                                   fontSize: 20.0,
                                   color: Colors.green,
                                 ),
        border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(30)
        ),
       suffixIcon: IconButton(
           icon: Icon(
              _passwordVisible
              ? Icons.visibility
              : Icons.visibility_off,
              color: Theme.of(context).primaryColorDark,
              ),
           onPressed: () {
              setState(() {
                  _passwordVisible = !_passwordVisible;
              });
            },
           ),
         ),
       )
       
                           ),
                         ],
                       ),
                       SizedBox(height: 15.0,),
                       SizedBox(
                         height: 50.0,
                         child: ElevatedButton(onPressed: ()async {
                        try{
                   final users= await    auth.signInWithEmailAndPassword(
                        email: _emailController.text, 
                        password: _passwordController.text.toString().trim(),
                        
                        );
                        if(users!=null){
                           Navigator.pushNamed(context, '/homepage');

                        }
                      }on FirebaseAuthException catch (e){
                        print(e.code);
                      };
                         },
                          child: Text('Sign in',textAlign: TextAlign.center,),
                          
                          ),
                       ),                        
                       SizedBox(
                         height: 20.0,
                       ),
                       Wrap(
                         children: [
                           Text(
                             "Don't have an account?",
                             style: TextStyle(
                               fontSize: 20.0,
                               fontWeight: FontWeight.w600,
                               color: Colors.green,
                             ),
                           ),
                           GestureDetector(
                             child: Text(
                               " Sign Up",
                               style: TextStyle(
                                 fontSize: 20.0,
                                 fontWeight: FontWeight.w600,
                                 color: Colors.red,
                               ),
                             ),
                             onTap: () {
                               Navigator.pushNamed(context, '/signUp');
                             },
                           )
                         ],
                       )
                     ],
                   ),
                 ),
               ),
             ),
           ),
         ],
       ),
      
    );
  }
}




