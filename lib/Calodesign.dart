import 'package:flutter/material.dart';
class Calodesign extends StatelessWidget {
  Calodesign({super.key});
  List<String>item2=[
    'Cheese',
    'Bread',
    'Beer',
    'Sushi',
    'Chicken',
    'Bacon',
    'Eggs',
    'Milk',
    'PanCakes',
    'Pizza'
  ];
  List<String>cal3=[
    '60 Kcal',
    '40 Kcal',
    '120 Kcal',
    '300 Kcal',
    '100 Kcal',
    '120 Kcal',
    '210 Kcal',
    '180 Kcal',
    '80 Kcal',
    '330 Kcal'
  ];
  List<String>images3=[
    'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthiest-cheese-1296x728-swiss.jpg?w=1155&h=1528',
    'https://i.pinimg.com/originals/6f/5f/53/6f5f5332cd54ba419022a4882935dbd5.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEv1Ommi6QBmaiOFe2xHUiIbx9o57svFd7ww&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrvG2cOpl1JNionvJ3EWslPYnU0HM8E3uy3g&s',
    'https://static.vecteezy.com/system/resources/previews/015/933/661/non_2x/tandoori-chicken-is-an-indian-non-vegetarian-spicy-food-free-photo.jpg',
    'https://pngimg.com/uploads/bacon/bacon_PNG10909.png',
    'https://cdn.pixabay.com/photo/2023/09/22/07/23/ai-generated-8268310_1280.jpg',
    'https://wallpapers.com/images/hd/milk-pictures-vf5saogbq8850v8f.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG3jTszSflQt-SjZGIWqJRegF0GrAVzpCQtg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZl6RyPcx1hFNwe32oYKU3iFly1ZHWN7xGow&s'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(height: double.infinity,width: double.infinity,decoration: const BoxDecoration(gradient: LinearGradient(colors: [
          Color(0xff373708),Color(0xffffe998),

        ])),),
        Align(alignment: Alignment.bottomCenter,
          child: Container(height: MediaQuery.sizeOf(context).height*0.6,decoration: BoxDecoration(color: Colors.grey[400],
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
          ),),
        ),
        Align(alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(height: MediaQuery.sizeOf(context).height*0.9,width: MediaQuery.sizeOf(context).width*0.9,
              decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search',

                          border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          filled: true,
                          fillColor: Colors.pink[50]


                      ),
                    ),
                  ),

                  Expanded(
                    child: ListView.separated(itemBuilder:(context,index)
                    {
                      return ListTile(
                        leading: CircleAvatar(radius: 20,backgroundColor: Colors.black,backgroundImage: NetworkImage(images3[index]),),
                        title: Text(item2[index],style: const TextStyle(fontSize: 25),),
                        trailing: Text(cal3[index],style: const TextStyle(color: Colors.red,fontSize: 13),),


                      );
                    },
                        separatorBuilder: (context,index)
                        {
                          return const SizedBox(height: 20,);
                        },
                        itemCount:item2.length),
                  ),
                  Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 57,width: 250,decoration: BoxDecoration(color: Colors.pink[50],borderRadius: const BorderRadius.all(Radius.circular(20))),
                      child: const Center(child: Text('ADD',style: TextStyle(color: Colors.black,fontSize: 20),)),
                    ),
                  ),

                  )
                ],),),
          ),
        )
      ],),
    );
  }
}