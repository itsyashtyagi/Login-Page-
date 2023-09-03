import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login.jpg'), fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.20, left: 150),
                child: Text(
                  "Welcome\n    Back",
                  style: TextStyle(color: Colors.brown, fontSize: 35),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.5,
                      right: 35,
                      left: 35),
                  child: Column(
                    children: [
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          icon: Icon(Icons.email),
                          hintText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          icon: Icon(Icons.password),
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.w700,
                                color: Colors.brown),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.brown,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'register');
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  color: Colors.brown),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forget Password',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  color: Colors.brown),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
