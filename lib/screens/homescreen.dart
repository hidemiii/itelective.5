import 'package:act2prac/shared/leftdrawer.dart';
import 'package:act2prac/shared/rightdrawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
}

Widget mobileUI(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green[400],
        actions: [
          Builder(
            builder: (context) => IconButton(
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                icon: Container(
                  child: Icon(Icons.account_circle_sharp),
                )),
          )
        ],
      ),
      endDrawer: RightDrawer(),
      drawer: LeftDrawer(),
      body: Container(
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment(3, 4),
                  width: 300,
                  height: 300,
                  child: Image.asset("assets/chibimaruko.jpeg"),
                )
              ],
            )
          ],
        ),
      ));
}

Widget webUI(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green[400],
        actions: [
          Builder(
            builder: (context) => IconButton(
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                icon: Container(
                  child: Icon(Icons.account_circle_sharp),
                )),
          )
        ],
      ),
      endDrawer: RightDrawer(),
      body: Container(
        child: Row(
          children: [
            LeftDrawer(),
            Column(
              children: [
                Container(
                  alignment: Alignment(3, 4),
                  width: 300,
                  height: 300,
                  child: Image.asset("assets/chibimaruko.jpeg"),
                )
              ],
            )
          ],
        ),
      ));
}
