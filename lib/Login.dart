import 'package:flutter/material.dart';

import 'homesc.dart';
import 'signup.dart';
class Login extends StatelessWidget {
const Login({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
body: Stack(
children: [
Container(height: double.infinity,width: double.infinity,decoration: const BoxDecoration(
gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
    colors: [
Color(0xff373708),Color(0xffffe998)
])
),
child: const Padding(
padding: EdgeInsets.only(top: 50,left: 30),
child: Text('Hello\nLog in!',style: TextStyle(color: Colors.white,fontSize: 30),),
),),
Padding(
padding: const EdgeInsets.only(top: 200),
child: Container(height: 400,margin: const EdgeInsets.all(10),decoration: const BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(offset:Offset(1,1),color: Colors.black,blurRadius: 1)],
borderRadius: BorderRadius.all( Radius.circular(20) )),
child: Padding(
padding: const EdgeInsets.symmetric(horizontal: 20),
child: SingleChildScrollView(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const SizedBox(height: 70,),
const TextField(
decoration: InputDecoration(
//hintText: 'enter your email',
suffixIcon: Icon(Icons.check,color: Colors.grey,),
label: Text('Gmail',style: TextStyle(color: Colors.black),)
),
),
const SizedBox(height: 20,),
const TextField(
decoration: InputDecoration(
//hintText: 'enter your password',
suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
label: Text('Password',style: TextStyle(color: Colors.black),)
),
),
const SizedBox(height: 20,),
const Align(
alignment: Alignment.centerRight,
child: Text('Forgot Password?',style: TextStyle(color: Colors.black,fontSize: 20),),
),
const SizedBox(height: 70,),
Container(height: 50,width: 150,decoration: const BoxDecoration(
color: Colors.black,
borderRadius: BorderRadius.all(Radius.circular(30)),boxShadow: [BoxShadow(offset: Offset(1,1),color: Colors.black,blurRadius: 1)] ),
child: Center(child: GestureDetector(onTap: (){
Navigator.push(context,MaterialPageRoute(builder: (context)=>const homesc()) );
},
child: const Text('Log In',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))),
),

],),
),
),
),
),
const SizedBox(height: 100,),
  Align(
  alignment: Alignment.bottomRight,
  child: Column(
  children: [
  const Padding(
    padding: EdgeInsets.only(top: 650,right: 10),
    child: Text('Do not have an Account?',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
  ),
  GestureDetector(onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUp()));
  },
  child: const Text('SIGN UP',style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.normal),))
  ],

  )
  )
],
),
);
}
}