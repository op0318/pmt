
import 'package:flutter/material.dart';
import 'package:pmt_updated/view/pages/dashboard.dart';
import 'package:pmt_updated/view/pages/projects/Projectmembersdashboard.dart';

class ProjectDashboard extends StatelessWidget {
  ProjectDashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

    final projectlist1=['Project 1','project 2','project 3','project 4','project 5','project 6'];

    final projectlist2=['Project 7','project 8','project 9','project 10','project 11','project 12'];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          leading: IconButton(onPressed: (){
            Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (context) => Dashboard(),));
          },icon:Icon( Icons.arrow_back,color: Colors.black,)),
          title: Text('NEW TRAINEES',style: TextStyle(color: Colors.deepPurple)),
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
              return Row(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Padding(padding: EdgeInsets.only(bottom: 10),
                        child: Card(

                          elevation: 20,
                          child: Container(
                            height: height*0.2,
                            width: width*0.4,
                            color:  Colors.white,
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [Image.asset(
                                    'assets/images/projectimages/profile.jpg'),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextButton(
                                      onPressed: (){
                                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProjectMembersDashboard(),));
                                    },
                                      child:Text(  projectlist1[index],style: TextStyle(fontSize: 20,color: Colors.black)),
                                  ),
                                  ),Text('50',style: TextStyle(fontSize: 18),)],
                              ),
                            ),
                          ),
                        ),
                      )]),
                  SizedBox(width: 20,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Card(
                          elevation: 20,
                          child: Container(
                            height: height*0.2,
                            width: width*0.4,
                            color:  Colors.white,
                            child: Center(
                              child: Column(

                                mainAxisSize: MainAxisSize.min,
                                children: [Image.asset(
                                    'assets/images/projectimages/profile.jpg'),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(projectlist2[index],style: TextStyle(fontSize: 20)),
                                  ),
                                  Text('50',style: TextStyle(fontSize: 18),)],
                              ),
                            ),
                          ),
                        )]),
                  )
                ],
              );
            },),


        ),
      ),
    );
  }
}
