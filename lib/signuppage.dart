import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isobscure = true;
  bool isloading = false;
  String name='';
  final formKey = GlobalKey<FormState>();
  String? validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value))
      return 'Enter a valid email address';
    else
      return null;
  }
  String? validatePassword(String value) {
    RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        autovalidateMode: AutovalidateMode.always,
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25, left: 215, right: 215),
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration:
                  BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, left: 180, right: 180),
              child: Text("Welcome!",
                  style: GoogleFonts.sourceCodePro(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.w400)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Container(
                height: 450,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Sign Up",
                      style: GoogleFonts.sourceCodePro(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 25),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                          child: TextFormField(

                            onChanged: (value) {
                              setState((){
                                name=value;
                                if (formKey.currentState!.validate()) {
                                  return null;
                                  // text in form is valid
                                }
                              });

                            },
                            validator:(value){
                              if(value!.isEmpty || value.length<4)
                              {
                                return "please Enter Correct value";
                              }
                              return null;
                            } ,
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10)),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: "Enter Your Name",
                                labelText: 'Name',
                                labelStyle: TextStyle(color: Colors.white),
                                hintStyle: TextStyle(color: Colors.white),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10))),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                          child: TextFormField(
                            validator: (value) => validateEmail(value),
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10)),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.white),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10))),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                          child: TextFormField(
                            validator: (value) => validatePassword(value!),

                            obscureText: isobscure,
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                                suffix: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isobscure = !isobscure;
                                    });
                                  },
                                  icon: Icon(isobscure
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  color: Colors.white,
                                ),
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Colors.white),
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10)),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10))),
                          )),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              boxShadow: [BoxShadow(color: Colors.grey)],
                              color: Colors.white,
                              shape: BoxShape.circle),
                          child: isloading
                              ? SpinKitDoubleBounce(color: Colors.blue)
                              : Icon(
                            Icons.arrow_forward,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isloading = true;
                          if (formKey.currentState!.validate()) {
                            return null;
                            // text in form is valid
                          }

                        });
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
