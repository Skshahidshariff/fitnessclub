import 'package:flutter/material.dart';
import 'package:iship_dart/mainSc.dart';
import 'timer.dart';

class Motivation extends StatefulWidget {
  const Motivation({super.key});

  @override
  State<Motivation> createState() => _MotivationState();
}

class _MotivationState extends State<Motivation> {
  int ti=0;
  List<String> cs = ['Running', 'Water', 'Cycling', 'Daily Sleep', 'Sports'];
  List<String> cs1 = ['10min', '3-4litres', '10min', '6-8 hours', '30min'];
  List<Widget> ic = [
    const Icon(Icons.run_circle_outlined,size: 40,),
    const Icon(Icons.water,size: 40,),
    const Icon(Icons.bike_scooter_outlined,size: 40,),
    const Icon(Icons.bed_outlined,size: 40,),
    const Icon(Icons.sports_cricket,size: 40,),
  ];
  List<Widget>ic1=[
    const Icon(Icons.chevron_right,size: 30,),
    const Icon(Icons.chevron_right,size: 30,),
    const Icon(Icons.chevron_right,size: 30,),
    const Icon(Icons.chevron_right,size: 30,),
    const Icon(Icons.chevron_right,size: 30,),
  ];
  List<String>img=[
    'https://lottie.host/24d763ed-66e5-4673-9386-2c7e9bdeccfa/2mZ5Zwh789.json',
    'https://lottie.host/880ef2ea-47b7-44ae-a528-ec8da72a2e9a/rDAeujBrQi.json',
    'https://lottie.host/6be03393-2fe3-46c5-b2c8-12a3cab1b472/PiHW6Ra5Fq.json',
    'https://lottie.host/19881b97-f877-42ff-9d73-905649721229/PWjBDbJmbg.json',
    'https://lottie.host/ba5d8e41-e700-4e95-9bd9-4a4ab3a64aab/IDS0NGd8Oi.json'
  ];
  List<String>ab=[
    'Running','Water','Cycling','Daily Sleep','Sports'
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
            child:Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    height: 150,width: 300,color: Colors.grey.withOpacity(0),
                    child: Image.network('https://see.fontimg.com/api/renderfont4/vmBPZ/eyJyIjoiZnMiLCJoIjo4MSwidyI6MTI1MCwiZnMiOjY1LCJmZ2MiOiIjMDAwMDAwIiwiYmdjIjoiI0ZGRkZGRiIsInQiOjF9/RGFpbHkgZ29hbHM/choco-chici.png',height: 100,width: 250,),
                  ),
                ),
              ],),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7, // Use a percentage of the screen height
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView.separated(
                //padding: EdgeInsets.all(16),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      if(index!=1) {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>TimerPage(urls:img[index],aps: ab[index],)));
                      }
                      else
                      {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>const Anni()));
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                        leading: ic[index],
                        title: Text(cs[index],style: const TextStyle(fontSize: 22),),
                        subtitle: Text(cs1[index],style: const TextStyle(fontSize: 19),),
                        trailing: ic1[index],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 10);
                },
                itemCount: cs.length,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Start()));
              },
                child: const Icon(Icons.arrow_back,color: Colors.black,size: 30,)),
          )
        ],
      ),

    );
  }
}