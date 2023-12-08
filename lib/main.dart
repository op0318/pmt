import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pmt_updated/view/pages/WelcomePages/initialpage.dart';
import 'package:pmt_updated/view/pages/dashboard.dart';
import 'package:pmt_updated/view/pages/login/login.dart';
import 'package:pmt_updated/view/pages/projects/Projectmembersdashboard.dart';
import 'package:pmt_updated/view/pages/projects/addnewemployee.dart';
import 'package:pmt_updated/view/pages/projects/project_dashboard.dart';
import 'package:pmt_updated/view/pages/skeleton.dart';

void main()async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();


   runApp( MaterialApp(
      home: addnewemployee()
      //UpdateEmpdetails()
      //initial()
       ),);
}

