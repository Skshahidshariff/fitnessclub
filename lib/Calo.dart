import 'package:flutter/material.dart';
import 'package:iship_dart/mainSc.dart';
import 'Calodesign.dart';
class Calo extends StatelessWidget {
  Calo({super.key});
  List<String>item=[
    'Bread',
    'Milk',
    '2 Eggs',
    'Bacon',
    'Chicken',
    'PanCakes'
  ];
  List<String>cal2=[
    '60 Kcal',
    '100 Kcal',
    '120 Kcal',
    '300 Kcal',
    '300 Kcal',
    '220 Kcal'
  ];
  List<String>images2=[
    'https://i.pinimg.com/originals/6f/5f/53/6f5f5332cd54ba419022a4882935dbd5.png',
    'https://wallpapers.com/images/hd/milk-pictures-vf5saogbq8850v8f.jpg',
    'https://cdn.pixabay.com/photo/2023/09/22/07/23/ai-generated-8268310_1280.jpg',
    'https://pngimg.com/uploads/bacon/bacon_PNG10909.png',
    'https://static.vecteezy.com/system/resources/previews/015/933/661/non_2x/tandoori-chicken-is-an-indian-non-vegetarian-spicy-food-free-photo.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG3jTszSflQt-SjZGIWqJRegF0GrAVzpCQtg&s'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(height: double.infinity,width: double.infinity,decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
                colors: [
                  Color(0xff373708),Color(0xffffe998),
                ])
        ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.orange,width: 5)),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 190,bottom: 125),
                      child: CircleAvatar(radius: 80,backgroundColor: Colors.transparent,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, ),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Goal',style: TextStyle(color: Colors.white),),
                              Text('2200 Kcal',style: TextStyle(color: Colors.white),),
                              SizedBox(height: 10,),
                              Text('Just a bit more',style: TextStyle(color: Colors.white),),
                              Text('600 Kcal' ,style: TextStyle(color: Colors.white),)
                            ],),
                        ),),
                    ))
              ],)),
        Align(alignment: Alignment.bottomLeft,
          child: Container(height: MediaQuery.sizeOf(context).height*0.6,width: double.infinity,decoration: const BoxDecoration(
              color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
          ),
            child: Column(children: [
              Expanded(
                child: ListView.separated(padding: const EdgeInsets.all(10),
                    itemBuilder:(context,index)
                    {
                      return ListTile(
                        leading: CircleAvatar(radius: 30,backgroundColor: Colors.black,backgroundImage: NetworkImage(images2[index]),),
                        title: Text(item[index],style: const TextStyle(fontSize: 20),),
                        trailing: Text(cal2[index],style: const TextStyle(color: Colors.red,fontSize: 13)),


                      );
                    },
                    separatorBuilder: (context,index)
                    {
                      return const SizedBox(height: 25,);
                    },
                    itemCount:item.length),
              ),
              Container(width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Calodesign()));
                  },
                      child: const CircleAvatar(radius: 20,backgroundColor: Color(0xffffe998),child: Icon(Icons.add),))
              ),
            ],),
          ),
        ),
        Positioned(
          top:75,
          left: 50,
          child: Container(height: 50,width: 320,
            decoration: BoxDecoration(color: Colors.white.withOpacity(0),),
            child: Image.network('https://see.fontimg.com/api/renderfont4/1GrKe/eyJyIjoiZnMiLCJoIjozNiwidyI6MTI1MCwiZnMiOjI5LCJmZ2MiOiIjMDAwMDAwIiwiYmdjIjoiI0ZGRkZGRiIsInQiOjF9/Q0FMT1JJRSAgQ09VTlQ/coffee-healing.png'),

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50,left: 10),
          child: GestureDetector(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Start()));
          },
              child: const Icon(Icons.arrow_back,color: Colors.black,size: 30,)),
        )

      ],

      ),
    );
  }
}