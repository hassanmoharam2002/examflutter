import 'package:flutter/material.dart';

class CardTwo extends StatelessWidget {
  final int index;
  const CardTwo({super.key, required this.index,});

  @override
  Widget build(BuildContext context) {
    List<Color> C=[const Color(0xFFFFF3E8),const Color(0xFFF5F5EA), ];
    List t =["React","اخصائى اشعة ","اخصائى اشعة ","طبيب اشعه "];
    List date =["2024-05-06","2024-05-07", "2024-04-03","2024-04-03"];

    return Card(
      elevation: 10,
      child: InkWell(
        onTap: (){},
        child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const SizedBox(
                    height: 15,
                  ),

                  const Text("React ..." ,style: TextStyle(
                      fontSize: 22,fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent
                  ),),
                  const SizedBox(height: 10,),
                  Text(t[index] ,style: const TextStyle(
                      fontSize: 18,fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent
                  ),),
                  const SizedBox(height: 5,),
                  const Text("Full time by now" ,style: TextStyle(
                      fontSize: 15,fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent
                  ),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const SizedBox(height: 10,),
                    Text(date[index] ,style: const TextStyle(
                        fontSize: 13,fontWeight: FontWeight.bold,
                        color: Colors.grey
                    ),),
                    Image.asset("assets/h.png",height: 40,width: 40,)
                    /////////////////
                  ],)

                ],
              ),
            )
        ),
      ),
    );
  }
}