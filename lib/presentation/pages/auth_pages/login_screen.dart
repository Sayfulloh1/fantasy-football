import 'package:fantasy/presentation/pages/auth_pages/register_screen.dart';
import 'package:fantasy/presentation/pages/nav_bar_pages.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var isObsecure = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.minHeight),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //login screen header
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('assets/images/auth_images/ball.png'),
                    ),

                    //login screen sign in form
                    Padding(
                      padding: EdgeInsets.all(width * .02),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(width * .2),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8,
                              color: Colors.black26,
                              offset: Offset(0, -3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(width * .07, width * .07,
                              width * .07, width * .01),
                          child: Column(
                            children: [
                              //email, password, login button
                              Form(
                                key: formKey,
                                child: Column(
                                  children: [
                                    //email
                                    TextFormField(
                                      controller: nameController,
                                      validator: (val) => val!.isEmpty
                                          ? 'Please write email'
                                          : '',
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.person,
                                          color: Colors.black,
                                        ),
                                        fillColor: Colors.white,
                                        filled: true,
                                        hintText: 'Nickname',
                                        // enabled: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: width * .01,
                                            vertical: height * .03),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(width * .1),
                                          borderSide: BorderSide(
                                              color: Colors.white60, width: 2),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                width * .1),
                                            borderSide: BorderSide(
                                                color: Colors.white60,
                                                width: 2)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                width * .11),
                                            borderSide: BorderSide(
                                                color: Colors.purple,
                                                width: 2)),
                                        disabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                width * .11),
                                            borderSide: BorderSide(
                                                color: Colors.purple)),
                                      ),
                                    ),
                                    SizedBox(height: height * .02),
                                    //password
                                    TextFormField(
                                      obscureText: isObsecure,
                                      controller: passwordController,
                                      validator: (val) => val!.isEmpty
                                          ? 'Please enter your password'
                                          : '',
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.key_sharp,
                                          color: Colors.black,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            isObsecure = !isObsecure;
                                          },
                                          child: Icon(
                                            isObsecure
                                                ? Icons.visibility_off
                                                : Icons.visibility,
                                            color: Colors.black,
                                          ),
                                        ),
                                        fillColor: Colors.white,
                                        filled: true,
                                        hintText: 'password',
                                        // enabled: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: width * .01,
                                            vertical: height * .03),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(width * .1),
                                          borderSide: BorderSide(
                                              color: Colors.white60, width: 2),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                width * .1),
                                            borderSide: BorderSide(
                                                color: Colors.white60,
                                                width: 2)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                width * .11),
                                            borderSide: BorderSide(
                                                color: Colors.purple,
                                                width: 2)),
                                        disabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                width * .11),
                                            borderSide: BorderSide(
                                                color: Colors.purple)),
                                      ),
                                    ),
                                    SizedBox(height: height * .02),
                                    //login button
                                    Material(
                                      color: Colors.black,
                                      borderRadius:
                                          BorderRadius.circular(width * .1),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                              const MyPages(),
                                            ),
                                                (route) => false,
                                          );
                                        },
                                        borderRadius:
                                            BorderRadius.circular(width * .1),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: width * .1,
                                            vertical: height * .02,
                                          ),
                                          child: Text(
                                            'Login',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // dont have an account button
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Don'nt have an account?"),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterScreen(),
                                        ),
                                        (route) => false,
                                      );
                                    },
                                    child: Text(
                                      "Register here",
                                      style:
                                          TextStyle(color: Colors.pinkAccent),
                                    ),
                                  ),
                                ],
                              ),
                              // admin login
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
