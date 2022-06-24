import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPageFinal extends StatefulWidget {
  const LoginPageFinal({Key? key}) : super(key: key);

  @override
  State<LoginPageFinal> createState() => _LoginPageFinalState();
}

class _LoginPageFinalState extends State<LoginPageFinal> {
  bool isobscure = true;
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            padding: EdgeInsets.only(top: 25, left: 100, right: 100),
            child: Text("Welcome Back!",
                style: GoogleFonts.sourceCodePro(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w400)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: Container(
              height: 400,
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
                    "Sign In",
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
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
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
                        child: TextField(
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
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10))),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?",style: GoogleFonts.sourceCodePro(
                          color: Colors.white,fontSize: 15
                      ),
                      ),
                    ),
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
                      });
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
