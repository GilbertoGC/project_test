import "package:flutter/material.dart";
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF9CC3E1),
      child: Center(
        child: SpinKitChasingDots(
          color: Color(0xFF1B5787),
          size: 50.0,
        ),
      ),
    );
  }
}

