import 'package:flutter/material.dart';
import 'package:project_test/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';

import '../../shared/loading.dart';
class SignIn extends StatefulWidget {
  
  final Function toggleView;
  SignIn({required this.toggleView});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth=AuthService();
  final _formKey= GlobalKey<FormState>();
  bool loading = false;
  //TextField state
  String email='';
  String password='';
   String error="";
  @override
  Widget build(BuildContext context) {
    return loading? Loading(): Scaffold(
      backgroundColor: Color(0xFF9CC3E1),
      appBar: AppBar(
        backgroundColor: Color(0xFF1B5787),
        elevation: 0.0,
        title: Text("Inicio de sesion"),
      ),
      body: Container(
       
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(

           key: _formKey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
   
              Container(
                width: 400,
                height: 700,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),

                child: Column( 
                  mainAxisAlignment: MainAxisAlignment.spaceAround,          
                  children: <Widget> [
                    Text("Bienvenido!",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                    
                    ),
                     /* Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 500,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              //borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Column(
                              children: [
                              ],
                            ),
                          ),                  
                        ),                 
                        ),*/

                    //SizedBox(height: 20.0,),
                    SizedBox(
                      width: 350.0,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Escribe tu Email"
                        ),
                        validator: (value) => value!.isEmpty? "No ha escrito su Email":null,
                        onChanged: (value) {
                          setState((() => email=value));
                        },
                      ),
                    ),
                   // SizedBox(height: 20.0,),
                    SizedBox(
                      width: 350.0,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Escribe tu Contraseña"
                        ),
                        obscureText: true,
                        validator: (value) => value!.length<6? "Contraseña muy corta":null,
                        onChanged: (value) {
                          setState((() => password=value));
                        },
                      ),
                    ),
                   // SizedBox(height: 30.0,),
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
                          child: Text("Iniciar sesion"),
                          onPressed: ()async{
                        if(_formKey.currentState!.validate()){
                          setState(() => loading=true,);
                          print(email);
                        print(password);
                        dynamic result= await _auth.signInWithEmailAndPassword(email, password);
                        if(result==null){
                         // setState(() => loading=false,);
                          //setState(() => error="Error sign in",);
                          setState(() {
                            error="Error iniciando sesion";
                            loading=false;
                          });
                        }
                        }
                      }
                        ),
                      ),
                  /*  RaisedButton(
                      color: Colors.pink[400],
                      child: Text("Sign in",
                      style: TextStyle(color: Colors.white),
                      ),
                      onPressed: ()async{
                        if(_formKey.currentState!.validate()){
                          print(email);
                        print(password);
                        dynamic result= await _auth.signInWithEmailAndPassword(email, password);
                        if(result==null){
                          setState(() => error="Error sign in",);
                        }
                        }
                      }
                      ),*/
                      SizedBox(height: 15.0,),
                      Text(error,
                      style: TextStyle(color: Colors.red,fontSize: 14.0),
                      ),
                      SizedBox(height: 40.0,),

                      /*RaisedButton(
                        color: Colors.pink[400],
                        child: Text("Register",
                          style: TextStyle(color: Colors.white),
                        ),
                        
                        onPressed: (){
                          widget.toggleView();
                        },
                        ),*/
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
                          child: Text("Registrarse"),
                          onPressed: (){
                        widget.toggleView();
                      },
                        ),
                      ),                 
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}