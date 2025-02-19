import 'package:flutter/material.dart';

import 'Login.dart';
import 'signup.dart';
void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myhome(),
    );
  }
}
class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {

  //dynamic _colors=[Colors.transparent,Colors.yellowAccent];
  //int _i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height,width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/loginpic.png'),fit: BoxFit.fill
              )
              ),
            ),
            Positioned(
              top: 756,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                     // _i=1;
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUp()));
                    });
                  },
                  child: Container(height:60 ,width: 130,
                    decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.elliptical(20, 20),),
                        boxShadow: [BoxShadow(color: Colors.white,blurRadius: 3)]),
                    child: const Row(
                      children: [SizedBox(width: 15,),
                        Center(child: Text('  Signup',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        SizedBox(width: 10,),
                        Icon(Icons.fitness_center,color: Colors.black,)
                      ],
                    ),

                  ),
                ),
              ),
            ),
            Align(alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 80,right: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      //_i=1;
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
                    });
                  },
                  child: Container(height: 60,width: 130,
                    decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.elliptical(20, 20),),
                        boxShadow: [BoxShadow(color: Colors.white,blurRadius: 3)]),
                    child: const Row(
                      children: [
                        Center(child: Text('    Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                        ),SizedBox(width: 10,),
                        Icon(Icons.account_circle,color: Colors.black,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 90,left: 80,
              child: Center(child: Column(
                children: [
                  Center(child: Padding(
                    padding: EdgeInsets.only(right: 30,top: 10),
                    child: Text('𝑭𝒊𝒕𝒏𝒆𝒔𝒔  𝑪𝒍𝒖𝒃',style: TextStyle(color: Colors.black,fontSize: 50),),
                  )),
                  Padding(
                    padding: EdgeInsets.only(left: 50,bottom: 30),
                    //child: Image.network('https://thumbs.dreamstime.com/b/dumbbell-icon-barbell-symbol-flat-vector-illustration-62342112.jpg',height: 70,width: 100,),
                  )
                ],
              )),
            ),
            const Positioned(
              top: 830,
                left: 120,
                child: Text('create an account or login',style: TextStyle(color: Colors.white),))


          ],
        )
    );
  }
}

