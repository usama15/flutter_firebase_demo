import 'package:firebase_demo/src/Signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  // const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Ecom App'),
        actions: [
          // IconButton(
          //     icon: const Icon(Icons.login),
          //     onPressed:(){ Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) {
          //         return Login();
          //       }),
          //     );}
          // ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
          ),
        ],
        backgroundColor: Colors.black38,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Container(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.email),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10 ,
            ),
            Center(
              child: Container(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.lock),
                  ),
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Container(
                width: 100,
                child: Center(
                  child: Text("Login",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 270,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Signup();
                  }),
                ); // Respond to button press
              },
              child: Container(
                width: 150,
                child: Center(
                  child: Text("Signup",
                      style: TextStyle(
                        color: Colors.lightBlue,
                      )),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}