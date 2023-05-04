
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/input_field.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _tenthController = TextEditingController();
  final TextEditingController _twelthController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final List<String> items = [
    'Pune','Mumbai','Sangli','Ratnagiri','Latur','Jalgaon'
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Registration Page"),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:16.0,horizontal:21.0),
          child: Column(
            children: [
              SizedBox(height: 15,),

              Inputfield(hintText: "Enter Your Full Name", labelText: "Name" ,controller:_nameController ,/*call validatory conditions here*/),
              SizedBox(height: 15,),

              Inputfield(hintText: "Enter Your Phone Number", labelText: "Phone Number" ,controller:_phoneController ,/*call validatory conditions here*/),
              SizedBox(height: 15,),

              Inputfield(hintText: "Enter Your Email Address", labelText: "Email Address" ,controller:_emailController ,/*call validatory conditions here*/),
              SizedBox(height: 15,),

              //-------------------- Call Drop down button here from dropdown.dart----------------------------------------------------------------------------------------------------------------------


               SizedBox(height: 15,),


              Inputfield(hintText: "Enter Your Address", labelText: "Address" ,controller:_addressController ,/*call validatory conditions here*/),
              SizedBox(height: 15,),

              Inputfield(hintText: "Enter Your SSC Marks", labelText: "SSC Marks" ,controller:_tenthController ,/*call validatory conditions here*/),
              SizedBox(height: 15,),

              Inputfield(hintText: "Enter Your HSC Marks", labelText: "HSC Marks" ,controller:_twelthController ,/*call validatory conditions here*/),
              SizedBox(height: 15,),

              Inputfield(hintText: "Create Your Password", labelText: "Password" ,controller:_passwordController ,/*call validatory conditions here*/),
              SizedBox(height: 15,),

              Row(
                children: [
                  ElevatedButton(onPressed: (){print("Submit is pressed");}, child:Text("Submit"),style: TextButton.styleFrom(minimumSize: Size(100,40)), ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}




