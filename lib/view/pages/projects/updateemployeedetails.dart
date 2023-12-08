
import 'package:flutter/material.dart';
import 'package:pmt_updated/view/pages/projects/Projectmembersdashboard.dart';



class UpdateEmpdetails extends StatefulWidget {
  const UpdateEmpdetails({Key? key}) : super(key: key);

  @override
  State<UpdateEmpdetails> createState() => _UpdateEmpdetailsState();
}

class _UpdateEmpdetailsState extends State<UpdateEmpdetails> {
  void _showdialog(BuildContext context)
  {
    showDialog(context: context, builder: (context) => Text('Added Succesfully'),);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading:IconButton(onPressed: (){
            
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProjectMembersDashboard(),));
            
          },icon:Icon(Icons.arrow_back,color: Colors.black,)),
          title: Text('Project 1',style: TextStyle(color: Colors.deepPurple.shade900)),
          centerTitle: true,elevation: 1),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.only(top: 20,left: 20,right: 10),
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    height: 380,
                    width: 400,
                    padding: EdgeInsets.only(left: 25,top: 50,right: 10,bottom: 20),
                    child: Row(
                      children: [
                        Column(children: [
                          Row(children: [Text('Photo',style: TextStyle(fontSize: 20)),
                            SizedBox(width: 120,),
                            Icon(Icons.account_circle_outlined)

                          ]),
                          SizedBox(height: 30,),
                          Row(children:[ Text('Name',style: TextStyle(fontSize: 18)),SizedBox(width: 50,),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1,color: Colors.grey.shade200),
                                  color: Colors.white),
                              height: 30,width:150,child: TextField(),)]),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              Text('Empid',style: TextStyle(fontSize: 18)),
                              SizedBox(width: 50,),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.grey.shade200),
                                    color: Colors.white),
                                height: 30,width:150,child: TextField(),)
                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(children: [Text('Designation',style: TextStyle(fontSize: 18)),
                            SizedBox(width: 50,),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1,color: Colors.grey.shade200),
                                  color: Colors.white),
                              height: 30,width:150,child: TextField(),)]),
                          SizedBox(height: 30,),
                          Row(children: [Text('Project',style: TextStyle(fontSize: 18)),SizedBox(width: 50,),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1,color: Colors.grey.shade200),
                                  color: Colors.white),
                              height: 30,width:150,child: TextField(),)])
                        ]),
                      ],
                    )),
                SizedBox(height: 30,),
                Row(children: [ElevatedButton(

                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.white)),
                        minimumSize: Size(150, 50)),
                    onPressed: (){},
                    child: Text('Delete',style: TextStyle(fontSize: 20),)),
                  SizedBox(width: 50,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          minimumSize: Size(150, 50)),
                      onPressed:() => _showdialog(context), child:
                  Text('Update',style: TextStyle(fontSize: 20),))],)

              ],
            )),
      ),
    );
  }
}


