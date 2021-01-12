import 'package:flutter/material.dart';
import 'package:home_keeper/registration_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {

  bool _passwordVisible;

  @override
  void initState() {

    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Stack(
          children: [

            Container(
              height: 330.0,
              decoration: BoxDecoration(
                  color: Colors.blueAccent[700]
              ),
            ),
            Container(
                margin:   EdgeInsets.only(left: 160, top: 100),
                height: 180,
                width: 110,
                child: Text('Icon Area', style: TextStyle(
                    color: Colors.white, fontSize: 20.0
                ),)

            ),
            SingleChildScrollView(
              child: Container(
                  height: 800.0,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 180),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60.0),
                      )
                  ),
                  child: Column(

                    children: [
                      Container(
                          margin: EdgeInsets.only( top: 25.0),
                          child: Center(
                            child: Text('Login', style: TextStyle(fontSize: 30, color: Colors.black,
                                fontWeight: FontWeight.bold),),
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          margin: EdgeInsets.only(left:40, right: 40, top: 30),
                          child: Column(
                            children: [
                              Container(
                                child: Form(
                                    child:

                                    Column(
                                      children: [



                                        TextFormField(
                                          decoration: InputDecoration(
                                              labelText: 'Enter Email',
                                              labelStyle: TextStyle(
                                                  color: Colors.black
                                              )
                                          ),
                                        ),

                                        SizedBox(height: 30),

                                        TextFormField(
                                          keyboardType: TextInputType.text,
                                          obscureText: !_passwordVisible,//This will obscure text dynamically
                                          decoration: InputDecoration(

                                            labelText: 'Enter Password',
                                            labelStyle: TextStyle(
                                                color: Colors.black
                                            ),
                                            // Here is key idea
                                            suffixIcon: IconButton(
                                              icon: Icon(
                                                // Based on passwordVisible state choose the icon
                                                _passwordVisible
                                                    ? Icons.visibility
                                                    : Icons.visibility_off,
                                                color: Theme.of(context).primaryColorDark,
                                              ),
                                              onPressed: () {
                                                // Update the state i.e. toogle the state of passwordVisible variable
                                                setState(() {
                                                  _passwordVisible = !_passwordVisible;
                                                });
                                              },
                                            ),
                                          ),
                                        ),


                                      ],
                                    )),
                              ),

                              SizedBox(height: 40),

                              Container(
                                height: 60,
                                width: double.infinity,
                                padding: EdgeInsets.all(10.0),
                                child: Center(child: Text('Login', style: TextStyle(color: Colors.white,
                                    fontWeight: FontWeight.bold, fontSize: 15),)),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.blueAccent[700]
                                ),
                              ),

                              Container(
                                  margin: EdgeInsets.only(top: 50, left: 47),
                                  child:  Row(
                                    children: [


                                      Text('Don\'t have any account? ', style: TextStyle(
                                          fontSize: 16
                                      ),),

                                      GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (context) => RegistrationScreen()
                                          ));
                                        },
                                        child: Container(
                                          child: Text('Login',style: TextStyle(
                                              fontSize: 17
                                          ), ),
                                        ),
                                      )
                                    ],
                                  )

                              )



                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),

          ],
        )

    );

  }
}


