import 'package:flutter/material.dart';
import 'dart:async';
import 'package:lottie/lottie.dart';

class TimerPage extends StatefulWidget {
  final String urls;
  final String aps;
  const TimerPage({super.key,required this.urls,required this.aps});
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  Duration duration = const Duration();
  Timer? timer;
  bool isRunning = false;
  bool isPaused = false;

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        final seconds = duration.inSeconds - 1;
        if (seconds < 0) {
          timer.cancel();
          isRunning = false;
          isPaused = false;
        } else {
          duration = Duration(seconds: seconds);
        }
      });
    });
    setState(() {
      isRunning = true;
      isPaused = false;
    });
  }

  void pauseTimer() {
    timer?.cancel();
    setState(() {
      isRunning = false;
      isPaused = true;
    });
  }

  void resetTimer() {
    timer?.cancel();
    setState(() {
      duration = const Duration();
      isRunning = false;
      isPaused = false;
    });
  }

  void setDuration(int hours, int minutes, int seconds) {
    setState(() {
      duration = Duration(hours: hours, minutes: minutes, seconds: seconds);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.aps),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(300)),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(300)),
              child: Lottie.network(widget.urls),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildTime(),
                const SizedBox(height: 20),
                buildTimeSetter(),
                const SizedBox(height: 20),
                buildButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return Text(
      '$hours:$minutes:$seconds',
      style: const TextStyle(fontSize: 48),
    );
  }

  Widget buildTimeSetter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () => setDuration(0, 30, 0), // 30 minutes example
          child: const Text('Set 30mins'),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () => setDuration(0, 10, 0), // 10 minutes example
          child: const Text('Set 10mins'),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () => setDuration(8, 0, 0), // 1 hour example
          child: const Text('set 8hours'),
        ),
      ],
    );
  }

  Widget buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: isRunning ? pauseTimer : startTimer,
          child: Text(isRunning ? 'Pause' : (isPaused ? 'Resume' : 'Start')),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: resetTimer,
          child: const Text('Reset'),
        ),
      ],
    );
  }
}
class Anni extends StatefulWidget {
  const Anni({super.key});

  @override
  State<Anni> createState() => _AnniState();
}

class _AnniState extends State<Anni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Water'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20),
              child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    //color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(300)),

                  ),
                  child: ClipRRect(borderRadius:const BorderRadius.all(Radius.circular(300)),child: Lottie.network('https://lottie.host/880ef2ea-47b7-44ae-a528-ec8da72a2e9a/rDAeujBrQi.json'),)
              ),

            ),
            const Padding(
              padding: EdgeInsets.only(left: 10,right: 10,bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Text('Stay fit Stay hydrated..    ',style: TextStyle(fontSize: 25),),
                  Text('1.Morning (7:00 AM - 8:00 AM):',style: TextStyle(fontSize: 18),),
                  Text('Drink 1-2 glasses of water as soon as you wake up. This helps to kickstart your metabolism and rehydrate your body after hours of sleep.\n'),
                  Text('2.Mid-Morning (9:00 AM - 11:00 AM):',style: TextStyle(fontSize: 18),),
                  Text('Have another glass of water. If you drink coffee or tea in the morning, make sure to drink an extra glass of water to balance it out.\n'),
                  Text('3.Before Lunch (12:00 PM - 1:00 PM):',style: TextStyle(fontSize: 18),),
                  Text('Drink a glass of water about 30 minutes before lunch. This can aid digestion and help you feel full, potentially preventing overeating.\n'),
                  Text('4.Afternoon (2:00 PM - 3:00 PM):',style: TextStyle(fontSize: 18),),
                  Text('Drink a glass of water. Staying hydrated can help maintain your energy levels, especially during the afternoon slump.\n'),
                  Text('5.Late Afternoon (4:00 PM - 5:00 PM):',style: TextStyle(fontSize: 18),),
                  Text('Have another glass of water to keep your hydration levels up and help you stay focused.\n'),
                  Text('6.Before Dinner (6:00 PM - 7:00 PM):',style: TextStyle(fontSize: 18),),
                  Text('Drink a glass of water about 30 minutes before dinner to aid digestion and help you feel full.\n'),
                  Text('7.Evening (8:00 PM - 9:00 PM):',style: TextStyle(fontSize: 18),),
                  Text('Have a glass of water. This helps to keep you hydrated throughout the evening.\n'),
                  Text('8.Before Bed (10:00 PM):',style: TextStyle(fontSize: 18),),
                  Text('Drink a small glass of water before going to bed. This can help keep you hydrated overnight but try not to drink too much to avoid waking up during the night to use the bathroom.\n'),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}