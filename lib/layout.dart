


import 'package:flutter/material.dart';
import 'package:project_test/screens/home/home.dart';
import 'package:project_test/widgets/large_screen.dart';
import 'package:project_test/screens/mobile_body.dart';
import 'package:project_test/widgets/responsive.dart';


class SiteLayout extends StatelessWidget {
  const SiteLayout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth= MediaQuery.of(context).size.width;
    return Scaffold(
      body: ResponsiveLayout(
        desktopBody:Boceto(),
        //desktopBody:LargeScreen(),
        mobileBody: MyMobileBody(),
        ),
    );
  }
} 

