import 'package:flutter/material.dart';
import 'dart:async';


import 'mainSc.dart';
import 'subscription.dart';





class FitnessSubscriptionPage extends StatefulWidget {
  const FitnessSubscriptionPage({super.key});

  @override
  _FitnessSubscriptionPageState createState() => _FitnessSubscriptionPageState();
}

class _FitnessSubscriptionPageState extends State<FitnessSubscriptionPage> {
  final ScrollController _scrollController = ScrollController();
  int _currentIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_scrollController.hasClients) {
        _currentIndex++;
        if (_currentIndex >= 3) { // Update this limit based on your list length
          _currentIndex = 0;
          _scrollController.jumpTo(_scrollController.position.minScrollExtent);
        } else {
          _scrollController.animateTo(
            _currentIndex * MediaQuery.of(context).size.width,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _timer.cancel();
    super.dispose();
  }
  List<int>num=[3,6,12];
  List<String>mon=['Months','Months','Months'];
  List<String>text=['Save 0 %','Save 25 %','Save 40 %' ];
  List<String>text2=['/-299','/-549','/-959'];
  List<String>text3=['96.6/month','91.5/month','79.9/month'];
  List<String>text4=['Basic','Standard','Premium'];
  List<String>links=[
    'https://disabilitywebtraining.com/wp-content/uploads/2018/04/planBasic.png',
    'https://th.bing.com/th/id/OIP.YeGVsQ8DJRCCq6hwD1AFcQHaHD?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.XVMY-cVweTox-YOxJ4oA7AHaHa?rs=1&pid=ImgDetMain'
  ];
  List<String>text5=[' 96.6/month',' 91.5/month',' 79.9/month'];
  List<Color>colo=[
    Colors.green,
    Colors.yellow,
    Colors.blue
  ];
  List<String>text6=[
    '1.Compatible with most fitness monitors\n2.Wide range of workouts and trainers\n3.Fit club offers a social experience\n',
    '2.Offers comprehensive wellness features\n2.Great for competition\n3.Excellent pricing for long-term membership\n',
    '3.Offers comprehensive wellness features\n2.Great for competition\n3.Excellent pricing for long-term membership\n',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff373708), Color(0xffffe998)],
              ),
            ),
            child: Align(alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Container(
                  height: 200,
                  margin: const EdgeInsets.symmetric(horizontal: 10),// Set your desired height here
                  child: ListView(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildSubscriptionContainer(Colors.red, "Basic Plan",'https://disabilitywebtraining.com/wp-content/uploads/2018/04/planBasic.png'),
                      _buildSubscriptionContainer(Colors.green, "Standard Plan",'https://th.bing.com/th/id/OIP.YeGVsQ8DJRCCq6hwD1AFcQHaHD?rs=1&pid=ImgDetMain'),
                      _buildSubscriptionContainer(Colors.blue, "Premium Plan",'https://th.bing.com/th/id/OIP.XVMY-cVweTox-YOxJ4oA7AHaHa?rs=1&pid=ImgDetMain'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(alignment: Alignment.bottomCenter,
            child: Container(margin: const EdgeInsets.symmetric(horizontal: 10),height: 450,width: double.infinity,decoration: const BoxDecoration(
                color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
            ),
              child:Column(
                children: [
                  const Text('Special Plans',style: TextStyle(fontSize: 25,color: Colors.blue),),
                  const Text('pick the right plan for you'),
                  Expanded(
                    child: ListView.separated(itemBuilder: (context,index)
                    {
                      return GestureDetector(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Subscription(text: text4[index],url: links[index],text1: text5[index],text2: text6[index],col: colo[index],)));
                      },
                        child: Container(height: 100,width: 300,decoration: BoxDecoration(boxShadow: const [BoxShadow(
                            offset: Offset(1,1),color: Colors.black,blurRadius: 1
                        )],
                            color: Colors.blue[50],borderRadius: const BorderRadius.all(Radius.circular(30))
                        ),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20,top: 10),
                                child: Row(
                                  children: [
                                    Text('${num[index]}',style: const TextStyle(fontSize: 40),),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Text(mon[index]),
                                          const SizedBox(width: 180,),
                                          Text(text2[index],style: const TextStyle(fontSize: 30),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text(text[index]),
                                    const SizedBox(width: 190,),
                                    Text(text3[index])
                                  ],
                                ),
                              ),
                            ],),),
                      );
                    },
                        separatorBuilder: (context,index)
                        {
                          return const SizedBox(height: 20,);
                        },
                        itemCount: 3),
                  ),
                ],
              ) ,
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 50),
            child: Container(height: 60,width: 300,
              decoration: BoxDecoration(color: Colors.white.withOpacity(0)),
              child: Image.network('https://see.fontimg.com/api/renderfont4/1GrKe/eyJyIjoiZnMiLCJoIjozMCwidyI6MTI1MCwiZnMiOjI0LCJmZ2MiOiIjMDAwMDAwIiwiYmdjIjoiI0ZGRkZGRiIsInQiOjF9/U3Vic2NyaXB0aW9ucw/coffee-healing.png',fit: BoxFit.contain,),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Start()));
                },
                child: const Icon(Icons.arrow_back,color: Colors.black,size: 35,)),
          )

        ],
      ),
    );
  }

  Widget _buildSubscriptionContainer(Color color, String title,String url) {
    return Container(
      width: MediaQuery.of(context).size.width,
      //margin: EdgeInsets.symmetric(horizontal: 2),// Full width of the screen
      color: color,
      child: Center(
        child: Row(
          children: [
            const SizedBox(width: 50,),
            Text(
              title,
              style: const TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(width: 10,),
            CircleAvatar(radius: 30,backgroundColor: Colors.black,backgroundImage: NetworkImage(url),)
          ],
        ),
      ),

    );
  }
}