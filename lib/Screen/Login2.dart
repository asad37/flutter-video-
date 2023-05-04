import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';
import 'Login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Screen")),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      width: 200,
                      child: CircleAvatar(
                          radius: 80,
                          backgroundImage:
                              AssetImage("assets/images/logo.png")),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.password),
                          suffixIcon: Icon(Icons.visibility),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Builder(builder: (context) {
                      return ElevatedButton(
                          onPressed: () {
                            final message = SnackBar(
                              content: Text("Login Successully"),
                              backgroundColor: Colors.green.shade300,
                              duration: Duration(seconds: 2),
                              action: SnackBarAction(
                                  label: "Done", onPressed: () {}),
                              shape: StadiumBorder(),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(message);
                          },
                          child: Text("Login"));
                    }),
                    SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child: Card(child: Text("Forgot Password")),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child:
                            Card(child: Text("Don't have an account SingnUp")),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
