import 'package:flutter/material.dart';
import 'package:iship_dart/Login.dart';
import 'package:iship_dart/notification.dart';
import 'package:iship_dart/pedometer.dart';
import 'package:iship_dart/statistics.dart';
import '1st.dart';
import 'Calo.dart';
import 'Diet.dart';
import 'Motivation.dart';
import 'package:lottie/lottie.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  int tabindex = 0;
  final List<Widget> pages = [
    Mainsc(),
     Notificationsc(),
    const Accountsc(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[tabindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.lightGreen[800],
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
        currentIndex: tabindex,
        onTap: (int i) {
          setState(() {
            tabindex = i;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}


class Mainsc extends StatelessWidget {
  Mainsc({super.key});

  final List<String> url = [
    'https://lottie.host/08d204d1-a6d0-4555-8eb2-0e4a8842c246/SxcMAq1aS1.json',
    'https://lottie.host/2221c4f2-6f0e-4eaf-bd29-976e87cdefc5/2PgEWEnIgO.json',
    'https://lottie.host/dc47f92a-0216-4cea-b189-02e418b99957/yxxzqjVjV1.json',
    'https://lottie.host/58e61771-b2e8-4145-9533-59748496c40a/257fopYCwH.json',
    'https://lottie.host/66530e02-8972-443b-8ef4-0594467b1ce9/r20B9KrN68.json',
    'https://lottie.host/fbc578ea-d51f-4a61-b63a-3625b18f2d44/tlFrMZoZpA.json',
  ];
  final List<String> types = [
    'WORKOUTS',
    'DIET PLAN',
    'COUNT CALORIES',
    'GOALS',
    'STATISTICS',
    'SUBSCRIPTION'
  ];

  final List<Widget> names = [
    const Homesc(),
    Diet(),
    Calo(),
    const Motivation(),
    const Statistics(),
    FitnessSubscriptionPage(),

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
                gradient: LinearGradient(begin: Alignment.topLeft,
                  end: Alignment.bottomRight,

                  colors: [Color(0xff37370d), Color(0xffffe998)],)
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 100),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 23,
                        backgroundColor: Colors.blue[100],
                        child: const Padding(
                          padding: EdgeInsets.all(0),
                          child: Text(
                            'F',
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const Text(
                        'itness Club',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )

                    ],

                  ),
                ),
                const SizedBox(height: 20),
                const Text('The road to nowhere is paved with excuses',style: TextStyle(color: Colors.white,fontSize: 20),),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 550,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 35, left: 5, right: 5),
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => names[index],
                                  ),
                                );
                              },
                              child: Container(
                                height: 170,
                                width: 200,
                                decoration: const BoxDecoration(
                                  boxShadow: [BoxShadow(blurRadius: 1,
                                      color: Colors.grey,
                                      offset: Offset(2,2)
                                  )],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Lottie.network(
                                          url[index],
                                          fit: BoxFit.cover,
                                          height: 170,
                                          width: 200,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5, left: 30),
                                      child: Text(
                                        types[index],
                                        style: const TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class Accountsc extends StatefulWidget {
  const Accountsc({super.key});

  @override
  State<Accountsc> createState() => _homescState();
}

class _homescState extends State<Accountsc> {
  List<String>cs=['A+','55','6.2','20'];
  List<String>cs1=['Blood Group','Weight(kg)','Height(feet)','years'];
  //List<String>cs2=['https://image.similarpng.com/very-thumbnail/2020/10/Blood-drop-isolated-on-transparent-background-PNG.png',
   // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaNI950QXPox6ME3aLNzNBrC3QLAIEFVhccg&s',
   // 'https://st2.depositphotos.com/3643473/6063/i/450/depositphotos_60639577-stock-photo-person-measuring-his-height.jpg',
   // 'https://static.thenounproject.com/png/2941875-200.png'
 // ];
  List<String>cs3=[
    'https://icones.pro/wp-content/uploads/2022/05/icone-de-l-eau-rouge.png',
    'https://static.vecteezy.com/system/resources/previews/022/180/120/original/filled-color-outline-icon-for-weight-machine-vector.jpg',
    'https://care.pathwayto.org/wp-content/uploads/2024/03/Teen-measuring-their-height.png',
    //'https://png.pngtree.com/png-clipart/20230922/original/pngtree-height-measurement-icon-for-body-size-determination-figure-size-information-vector-png-image_12656782.png'
    'https://cdn2.iconfinder.com/data/icons/spa-solid-icons-1/48/25-1024.png',
  ];
 // Color _containercolor=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Container(height: double.infinity,width: double.infinity,decoration: const BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff37370d),Color(0xffffe998)
                  ]),
          ),),
          Column(
            children: [
              SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60,left: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Start()));
                        },
                          child: const Icon(Icons.arrow_back,size: 35,)),
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                          ),
                          child: ClipRRect(borderRadius: const BorderRadius.all(Radius.elliptical(25,20)),child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3E_tf23oVS8wKfopnpRn4zfNSGx_YqyX53g&s',fit: BoxFit.cover,),),
                        ),
                        const SizedBox(width: 10,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Rock',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                            Text('Your last week activity is 12% up!',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 25,
                      crossAxisSpacing: 25),
                      itemCount: 4,
                      itemBuilder: (context,index)
                      {
                        return Stack(
                          children: [
                            GestureDetector(
                              onTap: () {

                                },
                                child:
                                Container(
                                    height: 250,
                                    width: 230,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(offset: Offset(2, 2),
                                            color: Colors.black,
                                            blurRadius: 1)
                                      ],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50)),
                                    ),
                                    child: Column(
                                      children: [
                                        // Positioned(child: Image.network(cs3[index],height: 50,width: 50,)),
                                        const SizedBox(height: 80, width: 30,),
                                        Text(cs[index], style: const TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.bold),),
                                        Text(cs1[index],
                                          style: const TextStyle(fontSize: 20),)
                                      ],
                                    )
                                ),
                              ),
                            Positioned(
                              top:10,
                              left:12,
                              child: SizedBox(height:70,width:90,
                                child: Image.network(cs3[index],),
                              ),
                            )
                          ],
                        );
                      }
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 280,bottom: 40),
                child: Row(
                  children: [
                    const Icon(Icons.logout,size: 30,color: Colors.red,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
                      },
                        child: const Text('Log out',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),))
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 230,
            left: 70,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Statistics()));
              },
              child: Container(
                height: 50,
                width: 250,
                decoration: const BoxDecoration(color: Colors.black,borderRadius: BorderRadius.all(Radius.circular(30)),boxShadow: [BoxShadow(offset: Offset(1,1),color: Colors.black,blurRadius:1 )]),
                child: const Center(child: Text('Progress',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
            ),
          )

        ],
      ),
    );
  }
}