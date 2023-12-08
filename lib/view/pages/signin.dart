import 'package:flutter/material.dart';
import 'package:pmt_updated/view/pages/login/login.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(children: [
        Image.asset('assets/images/welcomepageimages/signin.png'),
        const SizedBox(height: 20,),
        const Text('Register',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
        const SizedBox(height: 10,),
        const  Text('Create your account',style: TextStyle(fontSize: 15,color: Colors.deepPurple),),
        const SizedBox(height: 10,),

        Row(children: [Padding(
          padding: EdgeInsets.only(top: 5,left: 15),
          child: Text('user name',style: TextStyle(fontSize: 20),),
        )]),
        Container(
          height: 50,
          width: 320,
          decoration:BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)),

          child: TextField(

              decoration: InputDecoration(
          suffixIcon: Icon(Icons.lock_outline,color: Colors.black),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
        ),
        Row(children: [Padding(
          padding: EdgeInsets.only(left: 15,top: 5),
          child: Text('user name',style: TextStyle(fontSize: 20),),
        )]),
        Container(
          height: 50,
          width: 320,
          decoration:BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)),

          child: TextField(

              decoration: InputDecoration(
      suffixIcon: Icon(Icons.lock_outline,color: Colors.black),

                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
        ),







        const Row(children: [Padding(
          padding: EdgeInsets.only(left: 15,top: 5),
          child: Text('user name',style: TextStyle(fontSize: 20),),
        )]),
        Container(
          height: 50,
          width: 320,
          decoration:BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)),

          child: TextField(
              decoration: InputDecoration(
      suffixIcon: Icon(Icons.lock_outline,color: Colors.black),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
        ),
        const  Row(children: [Padding(
          padding:  EdgeInsets.only(top: 5,left: 15),
          child:  Text('password',style: TextStyle(fontSize: 20),),
        )]),
        const SizedBox(height: 5,),
        Container(
          height: 50,
          width: 320,

          decoration:BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)),

          child: TextField(decoration: InputDecoration(
            suffixIcon: Icon(Icons.lock_outline,color: Colors.black),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
        ),
        const SizedBox(height:25,),
        ElevatedButton(
            style: const ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
                minimumSize: MaterialStatePropertyAll(Size(200,50))),
            onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LogIn(),));
            }, child:const Text('Signin',style: TextStyle(fontSize: 20),) ),
        SizedBox(height: 30,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("Don't have an account?"),TextButton(onPressed: (){}, child: Text(
            'Signup',style: TextStyle(color: Colors.white,
              decoration: TextDecoration.underline),))],)
      ],),
    );
  }
}
