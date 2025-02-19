import 'package:flutter/material.dart';
class Subscription extends StatelessWidget {
  final String text;
  final String url;
  final String text1;
  final String text2;
  final Color col;
  const Subscription({super.key,required this.text,required this.url,required this.text1,required this.text2,required this.col});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(height: double.infinity,width: double.infinity,decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
              colors: [
                Color(0xff373708),Color(0xffffe998)
              ]),
        ),),
        Align(alignment: Alignment.bottomCenter,
            child: Container(height: MediaQuery.sizeOf(context).height*0.65,width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey[300],borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),topLeft: Radius.circular(30)
              )),)),
        Center(child: Container(
          height: MediaQuery.sizeOf(context).height*0.8,
          width: MediaQuery.sizeOf(context).width*0.9,
          decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Column(children: [
            Container(height: 60,width: MediaQuery.sizeOf(context).width*0.9,
              decoration: const BoxDecoration(color: Colors.red,borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
              child: Center(child: Text(text,style: const TextStyle(fontSize: 30),)),
            ),
            const SizedBox(height: 60,),
            CircleAvatar(radius: 50,backgroundColor: Colors.black,backgroundImage: NetworkImage(url),),
            const SizedBox(height: 30,),
            Text(text1,style: const TextStyle(fontSize: 30,color: Colors.red),),
            const SizedBox(height: 20,),
            Text(text2,style: const TextStyle(fontSize: 15),),
            Padding(
              padding: const EdgeInsets.only(top: 169),
              child: Container(height: 60,width: MediaQuery.sizeOf(context).width*0.9,decoration: BoxDecoration(
                  color: col,borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
              ),
                child: const Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 100,),
                    Center(child: Icon(Icons.subscriptions,color: Colors.white,)),
                    SizedBox(width: 10,),
                    Text('SUBSCRIBE',style: TextStyle(color: Colors.white,fontSize: 20),)
                  ],
                ),),
            )
          ],),
        ))
      ],),
    );
  }
}