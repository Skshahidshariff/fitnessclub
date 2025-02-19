import 'package:flutter/material.dart';
import 'package:iship_dart/mainSc.dart';
import 'package:table_calendar/table_calendar.dart';
class Diet extends StatelessWidget {
  Diet({super.key});
  List<String>eat=[
    'BREAKfAST',
    'PRE LUNCH',
    'LUNCH',
    'POST LUNCH',
    'DINNER',
  ];
  List<String>time=[
    '7 AM to 10 AM',
    '10 AM to 12 AM',
    '12 PM to 4 PM',
    '4 PM to 8 PM',
    '8 PM to 12 PM',
  ];
  List<String>cal=[
    '800 / 2000 Kcal',
    '800 / 2000 Kcal',
    '800 / 2000 Kcal',
    '800 / 2000 Kcal',
    '800 / 2000 Kcal',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff373708),
                  Color(0xffffe998),
                ],
              ),
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 200,width: 330,color: Colors.grey.withOpacity(0),
                    child: Image.network('https://see.fontimg.com/api/renderfont4/vmBPZ/eyJyIjoiZnMiLCJoIjo4MSwidyI6MTI1MCwiZnMiOjY1LCJmZ2MiOiIjMDAwMDAwIiwiYmdjIjoiI0ZGRkZGRiIsInQiOjF9/RGlldCBwbGFu/choco-chici.png',height: 100,width: 250,),
                  ),
                ),
              ],),


          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.all(10),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 140,
                          width: 250,
                          decoration: const BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20)),boxShadow: [BoxShadow(offset: Offset(1,1),color: Colors.grey,blurRadius: 1)]),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Text(eat[index],style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                    const Spacer(),
                                    Text(cal[index],style: const TextStyle(color: Colors.red,fontSize: 18),)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(time[index]),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Container(height: 60,width: 350,decoration: const BoxDecoration(),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(onPressed: (){}, child: const Text('Avacado')),
                                      ElevatedButton(onPressed: (){}, child: const Text('Bac. Bites')),
                                      ElevatedButton(onPressed: (){}, child: const Text('Bac. Bites'))
                                    ],
                                  ),),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 5);
                      },
                      itemCount: 5,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen[800],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Remaining Calories',
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                        Text(
                          '+500 Cal',
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
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
