import 'package:flutter/material.dart';
import 'package:project_test/layout.dart';
import 'package:project_test/models/user.dart';
import 'package:project_test/screens/authenticate/authenticate.dart';
import 'package:project_test/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:project_test/models/user.dart';
class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user= Provider.of<Myuser?>(context);
    print(user);
    //RETURN HOME OR AUTHENTICATE WIDGET
    //return SiteLayout();
    if(user==null){
      return Authenticate();
    }else{
      return SiteLayout();
    }
    //return Authenticate();
  }
}