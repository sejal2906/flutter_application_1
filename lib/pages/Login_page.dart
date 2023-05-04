import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/input_field.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _grnnoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:16.0,horizontal:32.0),
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Text( "Welcome",
            style:TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,),),
              SizedBox(
                height: 50,
              ),


              Inputfield(hintText: "Enter GRN NO.", labelText: "GRN NO." ,controller:_grnnoController ,/*call validatory conditions here*/),

              SizedBox(
               height: 20,
              ),

              Inputfield(hintText: "Enter the password ", labelText: "password" ,controller:_passwordController,/*call validatory conditions here*/),

              SizedBox(
                height: 15,
              ),


              //____________Forgot password______________
              Row(
                children: [
                  TextButton(onPressed: (){print("forgot password");},
                      child: Text("Forgot Password ?"))
                ],
              ),

              //____________Login Button______________
              ElevatedButton(onPressed: (){print("Login button pressed");}, child: Text("Login"),style: TextButton.styleFrom(minimumSize: Size(250, 40)),),
              SizedBox(
                height: 15,
              ),


              //____________Sign Up Button______________
              Row(
                children: [
                  Text("New to this app?"),
                  TextButton(onPressed: (){print("Sign up");}, child: Text("Sign Up"))
                ],
              ),

            ],
          ),
        ),
      )
    ) ;
  }
}
