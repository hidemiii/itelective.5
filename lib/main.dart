import 'package:act2prac/screens/homescreen.dart';
import 'package:act2prac/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'screens/about.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginScreen(),
        "/second": (context) => SignUpScreen(),
        "/third": (context) => HomeScreen(),
        "/fourth": (context) => AboutScreen(),
      },
    ));

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return webUI(context);
          } else {
            return mobileUI(BuildContext);
          }
        },
      ),
    );
  }

  Widget webUI(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 2,
            child: Image(
              image: AssetImage("assets/beach.JPG"),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 2,
            child: loginButtons(),
            color: Color.fromARGB(255, 170, 209, 241),
          ),
        ],
      ),
    );
  }

  Stack mobileUI(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image(
          image: AssetImage("assets/beach.JPG"),
          fit: BoxFit.cover,
        ),
      ),
      loginButtons(),
    ]);
  }

  Column loginButtons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              child: Icon(
                Icons.location_pin,
                color: Colors.white,
                size: 100,
              ),
            ),
            Column(
              children: [
                AutoSizeText(
                  "Travel",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    fontFamily: "Regular",
                    letterSpacing: 2,
                  ),
                ),
                AutoSizeText(
                  "assistant",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 45,
                    fontFamily: "Regular",
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 120,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black.withOpacity(0.6),
          ),
          width: 275,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              labelText: 'First Name',
              labelStyle: TextStyle(color: Colors.white),
              hintText: 'Enter Your  Name',
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black.withOpacity(0.6),
          ),
          width: 275,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              labelText: 'Password',
              labelStyle: TextStyle(color: Colors.white),
              hintText: 'Enter Your Password',
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          width: 280,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.lightGreenAccent[700],
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "SIGN IN",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 120,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 10,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            FacebookAuthButton(
              onPressed: () {},
              style: AuthButtonStyle(
                buttonType: AuthButtonType.icon,
                borderRadius: 100,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            EmailAuthButton(
              onPressed: () {},
              style: AuthButtonStyle(
                buttonType: AuthButtonType.icon,
                borderRadius: 100,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            TwitterAuthButton(
              onPressed: () {},
              style: AuthButtonStyle(
                buttonType: AuthButtonType.icon,
                borderRadius: 100,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            GoogleAuthButton(
              onPressed: () {
                Navigator.pushNamed(context, "/third");
              },
              style: AuthButtonStyle(
                buttonType: AuthButtonType.icon,
                borderRadius: 100,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 130,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Don't have an account?",
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 10,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 280,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.orange[700],
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/second");
            },
            child: Text(
              "SIGN UP",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
