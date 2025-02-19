import 'package:flutter/material.dart';
import 'package:iship_dart/mainSc.dart';
import '1stdesign.dart';
import 'package:lottie/lottie.dart';


class Homesc extends StatefulWidget {
  const Homesc({super.key});

  @override
  State<Homesc> createState() => _HomescState();
}

class _HomescState extends State<Homesc> {
  List<String> minu = [
    '55 Min',
    '41 Min',
    '35 Min',
    '40 Min',
    '30 min'
  ];

  List<String> level = [
    'Amateur Level',
    'Intermediate Level',
    'Professional Level',
    'Professional Level',
    'Intermediate Level'
  ];

  List<String> workouts = [
    'He Sat Down',
    'Muscle Stretching',
    'Warm-Up Exercises',
    'Cardio Workout',
    'Full Body Workout',
  ];

  List<String> items = [
    '10*4 Sets',
    '10*3 Sets',
    '10 Items',
    '4 Sets',
    '10 Items',
  ];

  List<String> images = [
    'https://lottie.host/87e7136f-d7e4-4221-b8a1-2367afd3d8e8/l19ZxM4Rc3.json',
    'https://lottie.host/a0a11ec6-f1dc-4400-99cb-5efb4a256a6e/PGTQHTJgpP.json',
    'https://lottie.host/c2518f86-68ab-4f6c-906c-3d124eeb3879/yih1WaOGvL.json',
    'https://lottie.host/984f1944-7ad7-4bbc-83be-a4d3a8bb3f08/m30u5XeA53.json',
    'https://lottie.host/76aaf5fa-b038-4be2-a88f-de9a7eb29732/nZmJy9dSEq.json'
  ];
  List<String>vidoes=[
    'https://youtu.be/IODxDxX7oi4?si=WRD_Y4-KDBngNF0M',
    'https://youtu.be/Ru1hYrwCZJo?si=M__qFa3grD8cf1bX',
    'https://youtu.be/9UYVecB2_08?si=6HTLBu1UkHEJEGiD',
    'https://youtu.be/vnBXaCsoEPU?si=hyZc9SGt9msG2DBu',
    'https://youtu.be/wIynl3at0Rs?si=eW2c63RA-Hn-E1Bw'
  ];
  List<String>desc=[
    '1.Begin with your chest and stomach flat on the floor.\n2.Exhale as you push from your hands and heels, bringing your torso, chest, and thighs off the ground.\n3.Pause for a second in the plank position — keep your core engaged.\n4.Inhale as you slowly lower back to your starting position.',
    '1.Stand with your feet shoulder-width apart and knees bent slightly.\n2.Lean forward, placing your hands just above your knees.\n3.Round your back so that your chest is closed and your shoulders are curved forward.\n4.Then arch your back so that your chest opens and your shoulders roll back.\n5.Repeat several times.',
    '1.March on the spot: keep going for 3 minutes. Start off marching on the spot and then march forwards and backwards. ...\n2.Heel digs: aim for 60 heel digs in 60 seconds.\n3.Knee lifts: aim for 30 knee lifts in 30 seconds.\n4.Shoulder rolls: 2 sets of 10 repetitions. ...\n5.Knee bends: 10 repetitions.',
    '1.Marching in place can elevate the heart rate, making this exercise a suitable choice for a warm-up or single cardio activity.\n2.Rotate the arms in a circular motion, both clockwise and counterclockwise. The movement may resemble a butterfly or backstroke.\n3.To perform air jump rope, stand with the feet together and jump up and down while swinging the arms in a circular direction.\n4.Taking the stairs two at a time and increasing speed to a running pace can further challenge the cardiovascular system and leg muscles.',
    '1.Warmup: 5–10 minutes\n2.Core: Floor prone cobra\n3.Legs: Alternating step-up\n4.Chest: Stability ball dumbbell fly\n5.Shoulders: Shoulder shrug with dumbbells or resistance bands\n6.Back: Seated lat pulldown\n7.Triceps: Standing one-arm cable extension\n8.Biceps: Seated hammer curl on stability ball\n9.Cooldown: 5–10 minutes'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff37370d), Color(0xffffe998)],
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 30, top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Hii Rock',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3E_tf23oVS8wKfopnpRn4zfNSGx_YqyX53g&s'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Don\'t Miss The Fitness! 😇',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white.withOpacity(0.2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        children: [
                          Text(
                            '  Practice',
                            style: TextStyle(fontSize: 30),
                          ),
                          Spacer(),

                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: GestureDetector(onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>YoutubePlayerScreen(url: vidoes[index],des: desc[index],)));
                            },
                              child: Container(
                                height: 160,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 252, 252, 251),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(height: 10,),
                                              Text(
                                                workouts[index],
                                                style: const TextStyle(fontSize: 20),
                                              ),
                                              Text(
                                                level[index],
                                                style: TextStyle(
                                                    color: Colors.grey[900]),
                                              ),
                                              Text(
                                                items[index],
                                                style: TextStyle(
                                                    color: Colors.grey[700]),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  minu[index],
                                                  style: const TextStyle(fontSize: 20,color: Colors.blue),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Container(
                                        height: 140,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[100],
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(20),
                                          ),
                                        ),
                                        child: ColorFiltered(
                                          colorFilter: ColorFilter.mode(
                                            Colors.grey[100]!.withOpacity(0.2),
                                            BlendMode.srcATop,
                                          ),
                                          child: ClipRRect(
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(20)),
                                            child: Lottie.network(
                                              images[index],
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 10);
                        },
                        itemCount: minu.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Start()));
                },
                  child: const Icon(Icons.arrow_back,color: Colors.black,size: 30,)),
            )
          ],
        ),
      ),
    );
  }
}