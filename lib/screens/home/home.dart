import 'package:flutter/material.dart';
import 'package:project_test/services/auth.dart';
import 'package:project_test/widgets/dashButton.dart';
import 'package:project_test/widgets/machineDard.dart';
import 'package:project_test/services/auth.dart';

import 'package:provider/provider.dart';


class Boceto extends StatelessWidget {
  final AuthService _auth= AuthService();
  //const Boceto({Key? key}) : super(key: key);

int ledStatus = 0;
bool isLoading = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.deepPurple[200],
      backgroundColor: Color(0xFF9CC3E1),
      appBar: AppBar(
        title: Text("DASHBOARD"),
        backgroundColor: Color(0xFF1B5787),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            //------------------------------
            //SIDEBAR
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                width: 300,
               // color: Colors.deepPurple[300],
               child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                  height: 40,
                ),
                  //-----------
                  //FOTO AVATAR
                  CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/profile.jpg'),
                  backgroundColor: Colors.white,                 
                ),
                //--------------------------
                //NOMBRE DE USUARIO
                Text("Usuario 1",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14
                  ),
                ),
    
                //---------------------------
                //BUSCAR TEXTO
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Buscar",
                      prefixIcon: Icon(Icons.search),                     
                    ),
                  ),
                ),
                //-----------------------------------
                //BOTONES
                
                Dashbutton(buttonTitle: "Dashboard", onPressed: (){},),
                Dashbutton(buttonTitle: "Notificaciones",onPressed: (){}),
                Dashbutton(buttonTitle: "Ajustes",onPressed: (){}),
                SizedBox(
                  height: 120.0,
                ),
                /*Dashbutton(buttonTitle: "Salir",onPressed: ()async{
                  await _auth.signOut();
                }),*/
    
    
                Container(
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
                    child: Text("Salir"),
                    onPressed: ()async{
                  await _auth.signOut();
                }
                  ),
                ),
    
                ],
               ),
              ),
            ),
          //---------------------------------
          // PANEL DE MAQUINAS
    
    
            Expanded(
             
              child: Column(
                children: [
                  Padding(
                    
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      
                      decoration: BoxDecoration(
                        color: Color(0xFF6187A5),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "ZONA 1",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            SizedBox(height:20),
                          Row(
                            children: [
                              Machinecard(machineName: "Maquina 1"),
                              Machinecard(machineName: "Maquina 2"),
    
                            ],
                          ),
                        ],
                      ),
                      height: 300.0,
                    ),
                    ),
    
    
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF6187A5),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "ZONA 2",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            SizedBox(height:20),
                          Row(
                            children: [
                              Machinecard(machineName: "Maquina 1"),
                              Machinecard(machineName: "Maquina 2"),
    
                            ],
                          ),
                        ],
                      ),
                      height: 300.0,
                    ),
                    ),
                ],
              )
            ),
    
    
            
    
          ],
        ),
      ),
    );
  }

}