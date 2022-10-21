import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
class Machinecard extends StatelessWidget {
  const Machinecard({
    required this.machineName
  });
  final String machineName;

  @override
  Widget build(BuildContext context) {
    return Container( 
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
                        Text(machineName),
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
                );
  }
}