import 'dart:html';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter/material.dart';


class LargeScreen extends StatelessWidget {
  const LargeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(
            child: Container(
              color: Color(0xFFFFFF),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 350.0,
                  height: 30.0,
                ),
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/profile.jpg'),
                  backgroundColor: Colors.white,                 
                ),
                Text("Usuario 1",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14
                  ),
                ),
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
               Container(
                  margin: EdgeInsets.only(top:10),
                  width: 450.0,
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
                    child: Text("Dashboard"),
                    onPressed: (){},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:10),
                  width: 450.0,
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
                    child: Text("Notificaciones"),
                    onPressed: (){},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:10),
                  width: 450.0,
                  height: 40,
                  child: ElevatedButton(                   
                    style: ButtonStyle(
                      //foregroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade500),
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
                    child: Text("Ajustes"),
                    onPressed: (){},
                  ),
                ),
                SizedBox(
                  width: 300.0,
                  height: 100.0,

                ),
               Container(
                  margin: EdgeInsets.only(top:10),
                  width: 450.0,
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
                    onPressed: (){},
                  ),
                ),
              ],
            ),
          )),
          Expanded(
            flex: 3,
            child: Container( 
            margin: EdgeInsets.all(1.0),
            color: Color(0xFF6187A5),
            child: Column(
              children: [
                Container( 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white
                  ),               
                  margin: EdgeInsets.all(10),
                  //color: Colors.white,
                  child: SizedBox(
                    width: 130,
                    height: 185,
                    child: Column(   
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,          
                      children: [
                        Text("Maquina #1"),
                        Icon(Icons.lightbulb),
                        Text("Estado"),
                        ToggleSwitch(
                          minWidth: 50.0,
                          minHeight: 30.0,
                          cornerRadius: 10.0,
                          activeBgColors: [[Colors.green[800]!], [Colors.red[800]!]],
                          activeFgColor: Colors.white,
                          inactiveBgColor: Colors.grey,
                          inactiveFgColor: Colors.white,
                          initialLabelIndex: 1,
                          totalSwitches: 2,
                          labels: ['On', 'Off'],
                          radiusStyle: true,
                          onToggle: (index) {
                              print('switched to: $index');
                               },
                          ),
                        Text("Conexion"),
                        Icon(Icons.network_wifi_3_bar_outlined),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            ),
          ),
        ],
      );
  }
}