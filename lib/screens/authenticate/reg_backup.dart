import 'package:flutter/material.dart';
import 'package:project_test/services/auth.dart';
class Register extends StatefulWidget {
  final Function toggleView;
  Register({required this.toggleView});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth=AuthService();
  final _formKey= GlobalKey<FormState>();
  //TextField state
  String email='';
  String password='';
  String error="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text("Sign up in to App"),
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
              SizedBox(height: 20.0,),
              RaisedButton(
                color: Colors.pink[400],
                child: Text("Register",
                style: TextStyle(color: Colors.white),
                ),
                onPressed: ()async{

                  if(_formKey.currentState!.validate()){
                    print(email);
                  print(password);
                  dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                  if(result==null){
                    setState(() => error="Invalid email",);
                  }else{

                  }
                  }
                  }
                ),
                SizedBox(height: 15.0,),
                Text(error,
                style: TextStyle(color: Colors.red,fontSize: 14.0),
                ),
                SizedBox(height: 40.0,),
                RaisedButton(
                  color: Colors.pink[400],
                  child: Text("Sign in"),
                  onPressed: (){
                    widget.toggleView();
                  },
                  ),
            ],
          ),
        ),
      ),
    );
  }
}