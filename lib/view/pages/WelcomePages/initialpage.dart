import 'package:flutter/material.dart';
import 'package:pmt_updated/view/pages/dashboard.dart';
import 'package:pmt_updated/view/pages/signin.dart';

import '../login/login.dart';
import '../skeleton.dart';

class initial extends StatelessWidget {
  const initial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

    var initialpage=initial();
    
    return Scaffold(
      backgroundColor: const Color(0xFF03A9F4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            color: Colors.blueAccent,
            padding: EdgeInsets.only(top: height*0.005,left:width*0.05,right: width*0.05),
            child: welcome()
      ),
        ),
    ),
    );
  }
}
