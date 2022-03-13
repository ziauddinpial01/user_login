import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("HomePage",style: TextStyle(
          fontSize:25, fontWeight: FontWeight.w500
        )
        ),
        
      ),
      body:
       Column(
         children: [
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               
               children: [
                 Container(
                   padding: EdgeInsets.only(left: 20),
                  height: 200.0,
                  width: 200.0,
                  child: Image.asset('asstes/images/download1.jpg'),
                 ),
                 SizedBox(width: 10.0,),
             
                 Container(
                   padding: EdgeInsets.only(left: 20),
                  height: 200.0,
                  width: 200.0,
                  child: Image.asset('asstes/images/download2.jpg'),
                 ),
                 SizedBox(width: 10.0,),
             Container(
                   padding: EdgeInsets.only(left: 20),
                  height: 200.0,
                  width: 200.0,
                  child: Image.asset('asstes/images/download3.jpg'),
                 ),
                 SizedBox(width: 10.0,),
             Container(
                   padding: EdgeInsets.only(left: 20),
                  height: 200.0,
                  width: 200.0,
                  child: Image.asset('asstes/images/download4.jpg'),
                 ),
                 SizedBox(width: 10.0,), Container(
                   padding: EdgeInsets.only(left: 20),
                  height: 200.0,
                  width: 200.0,
                  child: Image.asset('asstes/images/download5.jpg'),
                 ),
                 SizedBox(width: 10.0,)
               ],
             ),
           ),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
                 
                 children: [
                   Container(
                     padding: EdgeInsets.only(left: 20),
                    height: 200.0,
                    width: 200.0,
                    child: Image.asset('asstes/images/image1.jpg'),
                   ),
                   SizedBox(width: 10.0,),
               
                   Container(
                     padding: EdgeInsets.only(left: 20),
                    height: 200.0,
                    width: 200.0,
                    child: Image.asset('asstes/images/image2.jpg'),
                   ),
                   SizedBox(width: 10.0,),
               Container(
                     padding: EdgeInsets.only(left: 20),
                    height: 200.0,
                    width: 200.0,
                    child: Image.asset('asstes/images/image3.jpg'),
                   ),
                   SizedBox(width: 10.0,),
               Container(
                     padding: EdgeInsets.only(left: 20),
                    height: 200.0,
                    width: 200.0,
                    child: Image.asset('asstes/images/image4.jpg'),
                   ),
                   SizedBox(width: 10.0,), Container(
                     padding: EdgeInsets.only(left: 20),
                    height: 200.0,
                    width: 200.0,
                    child: Image.asset('asstes/images/image5.webp'),
                   ),
                   SizedBox(width: 10.0,)
                 ],
               ),
           ),
         ],
       ),
    );
  }
}