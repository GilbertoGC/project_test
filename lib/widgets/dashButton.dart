import 'package:flutter/material.dart';

import '../services/auth.dart';

class Dashbutton extends StatelessWidget {
  
  Dashbutton({required this.buttonTitle, required void Function()? onPressed});
  final String buttonTitle;
final AuthService _auth= AuthService();
  @override
  Widget build(BuildContext context) {
    return Container(
                  margin: EdgeInsets.only(top:10),
                  width: 300.0,
                  height: 40,
                  child: ElevatedButton(                   
                    style: ButtonStyle(
                      foregroundColor:MaterialStateProperty.resolveWith<Color?>((Set<MaterialState>states){
                        if(states.contains(MaterialState.pressed))
                          return Colors.white;
                        return Colors.black;
                      }),
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState>states){
                          if(states.contains(MaterialState.pressed))
                            return Color(0xFF6187A5);
                          return Colors.grey.shade100;
                        },
                       ),                      
                    ),                  
                    child: Text(buttonTitle),
                    onPressed: ()async{
                  //await _auth.signOut();
                }
                  ),
                );
  }
}