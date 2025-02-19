import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iship_dart/1st.dart';
import 'package:iship_dart/mainsc.dart';

import 'signup.dart';
class homesc extends StatefulWidget {
  const homesc({super.key});

  @override
  State<homesc> createState() => _homescState();
}

class _homescState extends State<homesc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(height: double.infinity,
     width: double.infinity,
     decoration: const BoxDecoration(
       gradient:LinearGradient(
         begin: Alignment.topLeft,
           end: Alignment.bottomRight,
           colors: [Color(0xff373708),Color(0xffffe998)]) ,),




      ),
          Positioned(
             top: 200,
             left: 10,
            right: 10,

            child: Container(
              height: 470,
              width: 30,margin:const EdgeInsets.all(10),
              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Colors.white,
              boxShadow: [BoxShadow(offset: Offset(1,1),color: Colors.black,blurRadius: 1)]),
              child:  const SingleChildScrollView(
                child: Form(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter your Name',
                            label: Text('Name',style: TextStyle(color: Colors.black),)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter your Age',
                            label: Text('Age',style: TextStyle(color: Colors.black),)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter your Blood Group',
                            label: Text('Blood Group',style: TextStyle(color: Colors.black),)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter your Height',
                            label: Text('Height',style: TextStyle(color: Colors.black),)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter your Weight',
                            label: Text('Weight',style: TextStyle(color: Colors.black),)
                        ),
                      ),
                    ),


                  ],
                ),

                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          GestureDetector(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Start()));
          },
            child: Padding(
              padding: const EdgeInsets.only(top: 705,left: 130),
              child: Container(height: 50,width: 150,decoration: const BoxDecoration(
                  color: Colors.black,boxShadow: [BoxShadow(offset: Offset(1,1),color: Colors.black,blurRadius: 1)],
                  borderRadius: BorderRadius.all(Radius.circular(30)) ),
                child: const Center(child: Text('confirm',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 85,left: 40),
            child: Container(
              height: 90,
              width: 320,
              decoration: BoxDecoration(color: Colors.white.withOpacity(0)),
              child: Image.network('https://see.fontimg.com/api/renderfont4/RpP6o/eyJyIjoiZnMiLCJoIjozNiwidyI6MTI1MCwiZnMiOjI5LCJmZ2MiOiIjMDAwMDAwIiwiYmdjIjoiI0ZGRkZGRiIsInQiOjF9/RmlsbCB0aGUgZGV0YWlscyA/coffee-healing-italic.png',fit: BoxFit.contain
                ,),
            ),
          )
      ],
    )
    );
  }
}
