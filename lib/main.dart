import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_test/layout.dart';
import 'package:firebase_core_web/firebase_core_web.dart';
import 'package:project_test/models/user.dart';
import 'package:project_test/screens/wrapper.dart';
import 'package:project_test/services/auth.dart';
import 'firebase_options.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:provider/provider.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<Myuser?>.value(
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Dash",
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.mulishTextTheme(
            Theme.of(context).textTheme
          ).apply(
            bodyColor: Colors.black
          ),
          primaryColor: Colors.blue
        ),
        //home: SiteLayout(),
        home: Wrapper(),
      ),
    );
  }
}


