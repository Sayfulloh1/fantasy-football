import 'package:fantasy/presentation/pages/auth_pages/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var isObsecure = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.minHeight),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //register screen header
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('assets/images/auth_images/ball_soccer.png'),
                    ),

                    //register screen sign in form
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
                                    //name
                                    TextFormField(
                                      controller: nameController,
                                      validator: (val) => val!.isEmpty
                                          ? 'Please write name'
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

                                    //email
                                    TextFormField(
                                      controller: emailController,
                                      validator: (val) => val!.isEmpty
                                          ? 'Please write email'
                                          : '',
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.email,
                                          color: Colors.black,
                                        ),
                                        fillColor: Colors.white,
                                        filled: true,
                                        hintText: 'Phone or email',
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
                                        hintText: 'Password',
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

                                      // SizedBox(height: height * .02),
                                      //login button

                                    ),
                                    SizedBox(height: height*.01,),
                                    Material(
                                      color: Colors.black,
                                      borderRadius:
                                      BorderRadius.circular(width * .1),
                                      child: InkWell(
                                        onTap: () {},
                                        borderRadius:
                                        BorderRadius.circular(width * .1),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: width * .1,
                                              vertical: height * .02),
                                          child: Text(
                                            'Register',
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
                              // already have an account button
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Already have an account?"),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                          const LoginScreen(),
                                        ),
                                            (route) => false,
                                      );
                                    },
                                    child: Text(
                                      "Login here",
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
