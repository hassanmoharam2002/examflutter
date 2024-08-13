


import 'package:examcourse/component/Cardtwo.dart';
import 'package:flutter/material.dart';

import 'component/cardone.dart';
import 'component/textformfield.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController search=TextEditingController();
    GlobalKey<FormState> formstate= GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

      ),
      body: ListView(
        children: [

          const SizedBox(height: 20),
          Padding(

            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                CustomTextform(
                  bordr:BorderRadius.circular(10),
                hintext: "Searsh about Group And Jops",
                  validator:(val) {
                    if(val==""){
                      return 'cant to be empty';
                    }
                    return null;
                  },
                  coloreo: Colors.white,
                  coloro: Colors.white,
                  mycontroller:search ,
                  statepassword: false,
                  prefix: Icons.search_outlined,
                  suffixpressed: () {  },

                ),
                const SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recommended Groups",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    ),

                    InkWell(
                      child: Text("View ALL",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigoAccent,
                        fontSize: 18,
                      ),),
                    ),

                  ],
                ),
                const SizedBox(height: 20,),
                SizedBox(
                 height: 250,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                      itemBuilder:(BuildContext context, int index) =>CardHome(index: index,),
                      separatorBuilder:(BuildContext context, int index) => const SizedBox(width: 20,),
                      itemCount: 3),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text("More Jobs",
                 style:
                TextStyle(

                  fontWeight: FontWeight.bold,fontSize: 24,


                ),),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 300,
                  child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing:10,mainAxisExtent: 190),

                    itemCount: 4,

                    itemBuilder: (BuildContext context, index)=>CardTwo(index: index,),),
                ),


              ],
            ),
          )



        ],
      ),
    );
  }
}
