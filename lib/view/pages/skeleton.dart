import 'package:flutter/material.dart';
import 'package:pmt_updated/view/pages/login/login.dart';
import 'package:pmt_updated/view/pages/signin.dart';

class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Image.asset('assets/images/welcomepageimages/welcome.png',height: 300,width: 300,),
         const  SizedBox(height: 50,),
          const Text('Trainee Tracking',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
         const  SizedBox(height: 30,),
         const  Text('The app enables organisations to monitor', style: TextStyle(color: Colors.indigo,fontSize: 15)),
         const  Text('and track the progress of their trainees',style: TextStyle(color: Colors.indigo,fontSize: 15),),
          const SizedBox(height: 50,),
          ElevatedButton(
              style: ButtonStyle(
                shape:MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))) ,
                minimumSize:const  MaterialStatePropertyAll(Size(150,50),),),
              onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LogIn()));
              }, child:const Text('LOG IN')),
         const  SizedBox(height: 15,),
          Container(
            decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white,width: 1)),
              child: ElevatedButton(
                  style: ButtonStyle(

                      backgroundColor:const  MaterialStatePropertyAll(Colors.blueAccent),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      minimumSize: const MaterialStatePropertyAll(Size(150,50))),
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignIn(),));


                  }, child:const  Text('SIGN UP')),
            ),
          )

        ]
    );
  }
}
