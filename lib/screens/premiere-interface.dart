import 'package:car/screens/login.dart';
import 'package:flutter/material.dart';

class Omg extends StatefulWidget {
  const Omg({Key? key}) : super(key: key);

  @override
  State<Omg> createState() => _OmgState();
}

class _OmgState extends State<Omg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/6c1c4d54d8bb45fb39c80de911543718.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 700,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Luxury Car Rental in French ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Explore the finest selection of luxury cars for rent.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 30),
                    // Center the button horizontally
                     Center(
                      child: SizedBox(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                          child: Text(
                            "Get Started",
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));},
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 255, 255, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            )
                          )
                          )
                      )
                    
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
