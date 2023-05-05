
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/input_field.dart';
enum Gender{Male,Female}
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
    'Mumbai','Amravati','Pune','Nagpur','Nanded','Akola','Aurangabad','Chandrapur','Ratnagiri'
  ];
  String? selectedValue;

  Gender? _gender;
  @override
  Widget build(BuildContext context) {
    var _gender;
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

              //-------------------Radiobutton------------------------------
              Row(
                children: [
                  Expanded(
                    child: RadioListTile<Gender>(
                        contentPadding:EdgeInsets.all(0.0),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),value: Gender.Male, groupValue:_gender,
                        dense: true,
                        title:Text(Gender.Male.name),
                        onChanged:(val){
                          setState(() {
                            var _gender= val;
                          });
                        }),
                  ),
                  SizedBox(width: 5.0,),
                  Expanded(
                    child: RadioListTile<Gender>(
                        contentPadding:EdgeInsets.all(0.0),
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),value: Gender.Female, groupValue:_gender,
                        dense: true,
                        title: Text(Gender.Female.name), onChanged:(val){
                      setState(() {
                        var _gender= val;
                      });
                    }),
                  ),

                ],
              ),
      //-----------------------------------------------------------------------

              Inputfield(hintText: "Enter Your Phone Number", labelText: "Phone Number" ,controller:_phoneController ,/*call validatory conditions here*/),
              SizedBox(height: 15,),

              Inputfield(hintText: "Enter Your Email Address", labelText: "Email Address" ,controller:_emailController ,/*call validatory conditions here*/),
              SizedBox(height: 15,),

              //-------------------- Call **"Drop down button"** here from dropdown.dart and delete this code upto the mark----------------------------------------------------------------------------------------------------------------------
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      SizedBox(
                          width: 4,
                      ),
                      Expanded(
                        child: Text(
                          'Select District',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  items: items
                      .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
                      .toList(),
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as String;
                    });
                  },
                  buttonStyleData: ButtonStyleData(
                    height: 50,
                    width: 380,
                    padding: const EdgeInsets.only(left:12, right: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(
                        color: Colors.black26,
                      ),
                      color: Colors.white,
                    ),
                    elevation: 0,
                  ),
                  iconStyleData: const IconStyleData(
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                    ),
                    iconSize: 14,
                    iconEnabledColor: Colors.black,
                    iconDisabledColor: Colors.grey,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    maxHeight: 200,
                    width: 300,
                    padding: null,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.white,
                    ),
                    elevation: 8,
                    offset: const Offset(-20, 0),
                    scrollbarTheme: ScrollbarThemeData(
                      radius: const Radius.circular(40),
                      thickness: MaterialStateProperty.all<double>(6),
                      thumbVisibility: MaterialStateProperty.all<bool>(true),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                    padding: EdgeInsets.only(left: 20, right: 20),
                  ),
                ),
              ),
//----------------------------------------------------------------------------------------------------------------
               SizedBox(height: 15,),


              Inputfield(hintText: "Enter Your Address", labelText: "Address" ,controller:_addressController ,/*call validatory conditions here*/),
              SizedBox(height: 15,),

              Inputfield(hintText: "Enter Your SSC Marks", labelText: "SSC Marks" ,controller:_tenthController ,/*call validatory conditions here*/),
              SizedBox(height: 15,),

              Inputfield(hintText: "Enter Your HSC Marks", labelText: "HSC Marks" ,controller:_twelthController ,/*call validatory conditions here*/),
              SizedBox(height: 15,),

              Inputfield(hintText: "Enter Your Current Course Name", labelText: "Current course" ,controller:_twelthController ,/*call validatory conditions here*/),
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




