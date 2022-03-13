import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  bool _obscureText = true;
  FirebaseAuth auth = FirebaseAuth.instance;
  var _passwordVisible=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body: Column(
      children: [
      
       Container(
         height: 250,
         width: MediaQuery.of(context).size.width,
         child: Center(
           child: Text('Sign Up',style: TextStyle(
             fontSize: 25.0,fontWeight: FontWeight.w500,color: Colors.white
           ),)),
         decoration: BoxDecoration(
           color: Colors.green,
         
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(40.0),
             bottomRight: Radius.circular(40.0),
             topLeft: Radius.circular(40.0),
             topRight: Radius.circular(40.0),
             
           ),
         ),
        
       ),
       SizedBox(height: 70,),
       Container(
         padding: EdgeInsets.only(left: 20,right: 20),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            
             TextField(
              controller: _emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(30)
                ),
                 label: Text('Email'),
                hintStyle: TextStyle(
                  fontSize: 14.0,
                  
                ),
               
                labelStyle: TextStyle(
                  fontSize: 15.0,
                  color: Colors.green,
                ),
              ),
               ),
             SizedBox(
               height: 10.0,
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
                       labelText: ' Password',
                       hintText: 'Enter your  Password',
                       labelStyle: TextStyle(
                         fontSize: 15.0,
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
             SizedBox(
               height: 10.0,
             ),
             Row(
               children: [
               
                 Expanded(
                   child:  TextFormField(
          keyboardType: TextInputType.text,
         controller: _confirmPassword,
         obscureText: !_passwordVisible,
            decoration: InputDecoration(
          labelText: 'Confirm Password',
          hintText: 'Confirm Password',
            labelStyle: TextStyle(
              fontSize: 15.0,
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
               child: Container(
                 padding: EdgeInsets.only(left: 20),
                 child: ElevatedButton(onPressed: ()  {
                 
                   try{
                   auth.createUserWithEmailAndPassword(
                     email: _emailController.text, 
                     password: _passwordController.text.toString().trim(),

                     );
                     
                }on FirebaseAuthException catch (e){
                     print(e.code);
                   };
                   
                   
                 },
                  child: Text('Sign Up',style:TextStyle(color: Colors.white),)),
               ),
             ),
             
             
             SizedBox(
               height: 20.0,
             ),
             Container(
               padding: EdgeInsets.only(left:20,),
               child: Wrap(
                 children: [
                   Text(
                     "Already have an account?",
                     style: TextStyle(
                       fontSize: 13.0,
                       fontWeight: FontWeight.w600,
                       color: Colors.green,
                     ),
                   ),
                   GestureDetector(
                     child: Text(
                       " Sign In",
                       style: TextStyle(
                         fontSize: 20.0,
                         fontWeight: FontWeight.w600,
                         color: Colors.red,
                       ),
                     ),
                     onTap: () {
                       Navigator.pushNamed(context, '/signIn');
                     },
                   )
                 ],
               ),
             )
           ],
         ),
       )
      ],
      ),
    );
  }
}
