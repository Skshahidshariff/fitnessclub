import 'package:flutter/material.dart';

import 'Login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(height: double.infinity,width: double.infinity,decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                  end: Alignment.bottomRight,

                  colors: [
                Color(0xff373708),Color(0xffffe998)
              ])
          ),
            child: const Padding(
              padding: EdgeInsets.only(top: 50,left: 30),
              child: Text('Create Your\nAccount',style: TextStyle(color: Colors.white,fontSize: 30),),
            ),),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child:
            Container(
              height: 400,margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(offset: Offset(1,1),color: Colors.black,blurRadius: 1)],
                  borderRadius: BorderRadius.all( Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 70,),
                      const TextField(
                        decoration: InputDecoration(
                           // hintText: 'Enter your email',
                            suffixIcon: Icon(Icons.check,color: Colors.grey,),
                            label: Text('Phone or E-mail',style: TextStyle(color: Colors.black),)
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                           // hintText: 'Enter your password',
                            suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                            label: Text('Password',style: TextStyle(color: Colors.black),)
                        ),
                      ),

                      const TextField(
                        decoration: InputDecoration(
                           // hintText: 'Confirm password',
                            suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                            label: Text('Confirm Password',style: TextStyle(color: Colors.black),)
                        ),
                      ),


                      const SizedBox(height: 70,),
                      GestureDetector(onTap: () {

                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
                      },
                        child: Container(height: 50,width: 150,decoration: const BoxDecoration(
                            color: Colors.black,boxShadow: [BoxShadow(offset: Offset(1,1),color: Colors.black,blurRadius: 1)],
                            borderRadius: BorderRadius.all(Radius.circular(30)) ),
                          child: const Center(child: Text('Create',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                        ),
                      ),

                    ],),
                ),
              ),
            ),
          ),
          const SizedBox(height: 80,),
          Align(
            alignment: Alignment.bottomRight,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 650,right: 10),
                  child: Text('Already have an account?',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                ),
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
                },
                    child: const Text('SIGN IN',style: TextStyle(fontSize: 20,color: Colors.blue),))
              ],
            ),
          )

        ],
      ),
    );

  }

}
