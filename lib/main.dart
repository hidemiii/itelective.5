import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
            Container(
              child: Column(
                children: [
                  Text(
                    "Travel",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                      fontFamily: "Regular",
                      letterSpacing: 2,
                    ),
                  ),
                  Text(
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
            ),
          ],
        ),
        SizedBox(
          height: 120,
        ),
        Container(
          padding: EdgeInsets.all(13),
          height: 55,
          width: 280,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 25,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Username",
                style: TextStyle(color: Colors.white.withOpacity(0.7)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.all(13),
          height: 55,
          width: 280,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.lock,
                  color: Colors.black,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Password",
                style: TextStyle(color: Colors.white.withOpacity(0.7)),
              ),
            ],
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
              onPressed: () {},
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
            onPressed: () {},
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
