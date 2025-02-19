import 'package:flutter/material.dart';
import 'package:iship_dart/mainSc.dart';
import 'package:lottie/lottie.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Stack(children: [
        Container(height: double.infinity,width: double.infinity,decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
              colors: [
                Color(0xff373708),Color(0xffffe998),
              ]),
        ),),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 150,),
                    const Text(
                      'Virtual class',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: BarChart(),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Lottie.network(
                    'https://lottie.host/3feb6cbc-51a1-40cb-b921-80c8de94c577/8zreQLhasH.json',
                    height: 200,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    '#ReadyToSweat',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50,left: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Start()));
            },
              child: const Icon(Icons.arrow_back,color: Colors.black,size: 30,)),
        ),



      ],),

    );
  }
}
class BarChart extends StatelessWidget {
  const BarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BarColumn(label: 'Workouts', percentage: 87),
        BarColumn(label: 'Diet Plan', percentage: 72),
        BarColumn(label: 'Count Calories', percentage: 67),
        BarColumn(label: 'Goal', percentage: 22),
      ],
    );
  }
}

class BarColumn extends StatelessWidget {
  final String label;
  final int percentage;

  const BarColumn({super.key, required this.label, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '$percentage%',
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        ),
        const SizedBox(height: 4),
        Container(
          width: 40,
          height: percentage.toDouble() * 2,
          color: Colors.lightBlueAccent,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}