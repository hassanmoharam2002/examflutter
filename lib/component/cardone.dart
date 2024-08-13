import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {

  final int index;
  CardHome({super.key, required this.index,});
  List image=["assets/1.png","assets/2.png","assets/3.png"];
  @override
  Widget build(BuildContext context) {
   

    List t =["Other Jobs","Administrative","Technicalist"];
    List numjobs =["202 jobs","38 jobs", "24 jobs"];
    List members=["81 Members", "64 Members", "52 Members"];
    return Card(
      elevation: 10,
      child: InkWell(
        onTap: (){},
        child: Container(
          height: 100,
          width: 146,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white70,
                    radius: 40,
                    backgroundImage: AssetImage("assets/h.png"),
                  ),
                ),
                Text(t[index] ,style: const TextStyle(
                  fontSize: 19,fontWeight: FontWeight.bold,
                  color: Colors.black26
                ),),
                const SizedBox(height: 3,),
                const Center(
                  child: Text("new jobs" ,style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.bold,
                      color: Colors.cyan
                  ),),
                ),
                const SizedBox(height: 3,),
                Center(
                  child: Text(numjobs[index] ,style: const TextStyle(
                      fontSize: 15,fontWeight: FontWeight.bold,
                      color: Colors.grey
                  ),),
                ),
                const SizedBox(height: 3,),
                Center(
                  child: Text(members[index] ,style: TextStyle(
                      fontSize: 13,fontWeight: FontWeight.bold,
                      color: Colors.grey
                  ),),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}