import 'package:flutter/material.dart';
import 'mainSc.dart';

class Notificationsc extends StatelessWidget {
  Notificationsc({super.key});
  List<String>title1=[
    'Yoga Class',
    'Fitness Workshop',
    'Persional Training'
  ];
  List<String>subtitle1=[
    'New session starting tomorrow at 7 AM!',
    'Join our free fitness workshop this Saturday at 10 AM.',
    '50% off on personal training sessions for this week!'
  ];
  List<String>trailing1=[
    '5 Mins ago',
    '1 Hour ago',
    '2 Hour ago'
  ];
  List<String>title2=[
    'Membership Renewal',
    'Nutrition Tips',
    'App Update'
  ];
  List<String>subtitle2=[
    'Your membership is expiring soon. Renew now to continue enjoying our facilities.',
    'Get the latest nutrition tips from our experts. Stay healthy and fit!',
    'We have updated our app with new features. Check it out now!'
  ];
  List<String>trailing2=[
    '10 Hours ago',
    '1 Day ago',
    '2 Days ago'
  ];




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(children: [
        Container(height: double.infinity,width: double.infinity,decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
                colors: [
                  Color(0xff373708),Color(0xffffe998)
                ])
        ),),
        Padding(
          padding: const EdgeInsets.only(top: 128),
          child: Container(height: 330,width: double.infinity,margin:const EdgeInsets.all(10),decoration: const BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 40,width:389 ,decoration: BoxDecoration(color: Colors.pink[50],
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text('RECENT',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),),
                Expanded(
                  child: ListView.separated(itemBuilder: (context,index)
                  {
                    return ListTile(
                      leading: const CircleAvatar(radius: 20,backgroundColor: Colors.black,backgroundImage: NetworkImage('https://www.prism-me.com/media/2291/screenshot20284329-5e84b0c8142ea-1.png')),
                      title: Text(title1[index],style: const TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text(subtitle1[index]),
                      trailing: Text(trailing1[index]),

                    );
                  },
                      separatorBuilder: (context,index)
                      {
                        return const SizedBox(height: 5,);
                      },
                      itemCount: title1.length),
                )
              ],),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 475),
          child: Container(height: 330,width: double.infinity,margin:const EdgeInsets.all(10),decoration: const BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 40,width:389 ,decoration: BoxDecoration(color: Colors.pink[50],
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text('EARLIER',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),),
                Expanded(
                  child: ListView.separated(itemBuilder: (context,index)
                  {
                    return ListTile(
                      leading: const CircleAvatar(radius: 20,backgroundColor: Colors.black,backgroundImage: NetworkImage('https://external-preview.redd.it/0CQI8Uwmph9ZI3_jeiSxDJnkhwjiJioxCnkKQfm603I.jpg?auto=webp&s=cace9d8cbf7c4a9635765a06fdf51d3408f8ad33')),
                      title: Text(title2[index],style: const TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text(subtitle2[index]),
                      trailing: Text(trailing2[index]),

                    );
                  },
                      separatorBuilder: (context,index)
                      {
                        return const SizedBox(height: 5,);
                      },
                      itemCount: title1.length),
                )
              ],),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0,top: 60),
          child: Row(//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Start()));
              },
                  child: const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.arrow_back,size: 30,),
                  )),
              const SizedBox(width: 60,),
              Container(height: 40,width: 200,color: Colors.white.withOpacity(0),
                child: Image.network('https://see.fontimg.com/api/renderfont4/1GrKe/eyJyIjoiZnMiLCJoIjo4MSwidyI6MTI1MCwiZnMiOjY1LCJmZ2MiOiIjMDAwMDAwIiwiYmdjIjoiI0ZGRkZGRiIsInQiOjF9/Tm90aWZpY2F0aW9ucw/coffee-healing.png',fit: BoxFit.fill,),),
              const SizedBox(width: 60,),
              const Icon(Icons.notifications_none_outlined,size: 30,)
            ],
          ),
        )


      ],),
    );

  }
}