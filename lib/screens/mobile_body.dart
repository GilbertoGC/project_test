import 'package:flutter/material.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text(" DASHBOARD"),
        backgroundColor: Color.fromARGB(255, 5, 86, 47),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 16/9,
              child: Container(
                color: Colors.green.shade300
              ),
            ),
            ),
        ],
      ),
    );
  }
}