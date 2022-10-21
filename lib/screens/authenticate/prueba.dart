import 'package:flutter/material.dart';
import 'package:project_test/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
class SignIn extends StatefulWidget {
  
  final Function toggleView;
  SignIn({required this.toggleView});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth=AuthService();
  final _formKey= GlobalKey<FormState>();
  //TextField state
  String email='';
  String password='';
   String error="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9CC3E1),
      appBar: AppBar(
        backgroundColor: Color(0xFF1B5787),
        elevation: 0.0,
        title: Text("Sign in to App"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
           key: _formKey,
          child: Column(
            children: <Widget> [
              SizedBox(height: 20.0,),
              TextFormField(
                validator: (value) => value!.isEmpty? "Enter an email":null,
                onChanged: (value) {
                  setState((() => email=value));
                },
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                obscureText: true,
                validator: (value) => value!.length<6? "Password too short":null,
                onChanged: (value) {
                  setState((() => password=value));
                },
              ),
              SizedBox(height: 30.0,),
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
                    child: Text("Sign in"),
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
                    child: Text("Register"),
                    onPressed: (){
                  widget.toggleView();
                },
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 500,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: [





                        ],
                      ),
                    ),                  
                  ),                 
                  ),
            ],
          ),
        ),
      ),
    );
  }
}