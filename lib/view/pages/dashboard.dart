import 'package:flutter/material.dart';
import 'package:pmt_updated/view/pages/projects/project_dashboard.dart';


class Dashboard extends StatelessWidget {
   Dashboard({Key? key}) : super(key: key);

  final traineesList=['NEW TRAINEES','EXISTING TRAINEES','OVERALL TRAINEES'];
  final  colorlist=[Colors.deepPurple,Colors.pinkAccent,Colors.lightGreen];

  @override
  Widget build(BuildContext context) {
    final myheight=MediaQuery.of(context).size.height;
    final mywidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Column(
          children: [Container(
            height:myheight*0.15,
            width: mywidth,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [Row(
                     children: [
                       Text('Hello, ',style: TextStyle(color: Colors.black,fontSize: 25),),
                       Text('Thiru',style: TextStyle(fontSize: 25,color: Colors.indigo)),
                     ],
                   ),

                     Text('10804',style: TextStyle(fontSize: 22,color: Colors.indigo)),
                     Text('Admin',style: TextStyle(fontSize: 25,color: Colors.grey))],
                 ),
                   Expanded(child: Container()),
                   Image.asset('assets/images/profile/profileimage.png',)

                 ],
              ),
            ),
          ),
          Container(
            height: myheight*0.85-50,
            width: mywidth,
            color: Colors.blue,
            padding: const EdgeInsets.all(20),
            child:Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration:InputDecoration(
                      suffixIcon: Icon(Icons.refresh,color: Colors.blue),
                      prefixIcon:Icon(Icons.search,color: Colors.black),
                        enabledBorder: OutlineInputBorder(borderRadius:
              BorderRadius.circular(10))),),
                ),
                const SizedBox(height: 30,),


                Expanded(
                  child: ListView.builder(
                    itemCount: traineesList.length,
                    itemBuilder: (context, index)
                    {
                      return Padding(
                        padding: const EdgeInsets.only(
                          top: 20,bottom: 20,left: 10,right: 10
                        ),
                        child: Container(
                          decoration: BoxDecoration(color: colorlist[index],
                              borderRadius: BorderRadius.circular(10)),

                          padding:  const EdgeInsets.only(left: 20),
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(1),bottomLeft: Radius.circular(1)
                              ),
                              color: Colors.white,),
                            height: 80,
                            width: double.infinity,
                            child: Center(child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                 TextButton(onPressed: (){
                                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProjectDashboard(),));
                                   
                                 },child:Text(
                                     traineesList[index],style: const TextStyle(fontSize: 25)),
                                ),
                                Text('250')
                              ],
                            )),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )],
        ),
      ),
    );
  }
}


