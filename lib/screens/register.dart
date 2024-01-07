

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class siginup extends StatefulWidget {
  const siginup({super.key});

  @override
  State<siginup> createState() => _siginupState();
}

class _siginupState extends State<siginup> {
    final TextEditingController email= TextEditingController();
    final TextEditingController password = TextEditingController();
 final Key=GlobalKey<FormState>();
  bool? remember= false;
@override
void dispose(){
  super.dispose();
  email.dispose();
  password.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: TextButton(
      onPressed: () {
        Navigator.pop(context); // Use pop instead of push to go back
      },
      child: Icon(Icons.arrow_back, color: Colors.black38, size: 16),
    ),
    
  ),
  body: SafeArea(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
              Container(
                height: 120,
                width: 250,
                 decoration:BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/2c5fc8674717fef1ea07107edc348a42.jpg"),
                  fit: BoxFit.cover)
                 ),
              ),
      Text(
        "Create Your Account",
        style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 2),
      ),
        Container(
          margin: EdgeInsets.all(40),
          child: Column(
            children: [
              Form(
                key: Key,
                child: Column(
                  children: [
                    TextFormField(
                      controller: email,
                      validator: (value) {
                            if(value== null || value.isEmpty){
                           return 'Enter your password  ';
                                 }
                            return null;

                        },
                      decoration: InputDecoration(
                        hintText: "email",
                        labelText: "Email",
                        fillColor: Colors.white,
                        isDense: true,
                        filled: true,
                        suffixIcon: Icon(Icons.email_outlined, color: Colors.black38,),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      controller: password,
                        obscureText: true,
                        validator: (value) {
                            if(value== null || value.isEmpty){
                           return 'Enter your password  ';
                                 }
                            return null;

                        },
                      decoration: InputDecoration(
                        hintText: "password",
                        labelText: "Password",
                        fillColor: Colors.white,
                        isDense: true,
                        filled: true,
                        suffixIcon: Icon(Icons.password_outlined, color: Colors.black38,),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                 SizedBox(height: 10,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                      Checkbox(value: remember ,
                      activeColor: Color.fromARGB(255, 3, 3, 3), onChanged: (value){
                        setState(() {
                          remember=value;
                        });
                      }),
                      Text("Remember me", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400,),)
                     ],
                 ),

                     SizedBox(height: 30,),
                     Center(
                     child:SizedBox(
                      height: 50,
                      width:400,
                   child: ElevatedButton(
                    onPressed: (){ 
                      if (Key.currentState!.validate()) 
                      {
              }},
                    style:ElevatedButton.styleFrom(
                      primary:const Color.fromARGB(255, 12, 12, 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                     child: Text(
                       "Register",
                       style: TextStyle(color: Colors.white),
                    )
                    )
                     )
                     ),
                        SizedBox(height: 25,),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: (){},
                              child:Text(
                                "Forgot Password",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )
                            ),
                            SizedBox(height: 18,),
            

    Text("or continue with ", style: TextStyle(fontWeight: FontWeight.w400)),
 

                          ],
                        ),
                                                    SizedBox(height: 20,),

           Column(
  children: [
    Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/instgaram.svg",
            width: 50,
            height: 20,
          ),
          SizedBox(width: 30), // Ajoutez un espace de 10 points entre les icônes
          SvgPicture.asset(
            "assets/twitter.svg",
            width: 50,
            height: 20,
          ),
          SizedBox(width: 30), // Ajoutez un espace de 10 points entre les icônes
          SvgPicture.asset(
            "assets/google-icon.svg",
            width: 50,
            height: 20,
          ),
        ],
      ),
     
    ),
  ],
),
  SizedBox(height:20),
                 Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(fontSize: (16)),
        ),
        GestureDetector(
          onTap: () => {},
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: (16),
                color: Color.fromARGB(255, 10, 130, 146))
          ),
        ),
      ],
                 )

                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);
  }}