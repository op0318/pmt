import 'package:flutter/material.dart';
import 'package:pmt_updated/view/pages/projects/addnewemployee.dart';
import 'package:pmt_updated/view/pages/projects/project_dashboard.dart';

class ProjectMembersDashboard extends StatelessWidget {
  ProjectMembersDashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

    final name=['Thiru','devi','vini','suba','Aravind','Ajith','venkat'];
    final empid=['10801','10802','10803','10804','10805','10806'];


    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          leading: IconButton(onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProjectDashboard(),));
          },icon:Icon( Icons.arrow_back,color: Colors.black,)),
          title: Text('Project-1',style: TextStyle(color: Colors.deepPurple)),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          color: Colors.blueAccent,
          height: double.infinity,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index)
            {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(

                    color: Colors.white,
                    height: height*0.11,
                    width: width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 25,left: 10),
                          child: Container(
                            child: Image.asset('assets/images/projectimages/user1.png'),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                              children:[Text('Thirumoorthi',style: TextStyle(fontSize: 20)),
                              Text('10801')],

                        )
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Icon(Icons.edit_calendar_outlined),
                        )
                      ],
                    ),
                  ),
                ),
              );
              },),

        ),
        floatingActionButton: FloatingActionButton(
          child: IconButton(onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => addnewemployee(),));

          },icon: Icon(Icons.add),),
          backgroundColor: Colors.lightGreen,
          onPressed: () {  },),
      ),
    );
  }}
