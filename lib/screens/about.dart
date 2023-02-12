import 'package:act2prac/shared/leftdrawer.dart';
import 'package:act2prac/shared/rightdrawer.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
      drawer: Container(
        width: MediaQuery.of(context).size.width < 600
            ? MediaQuery.of(context).size.width / 2
            : MediaQuery.of(context).size.width / 3,
        child: Container(
          child: Drawer(
            backgroundColor: Colors.green[400],
            child: ListView(
              padding: EdgeInsets.all(24),
              children: [
                Container(
                  color: Colors.green[600],
                  child: ListTile(
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                    ),
                    leading: Icon(
                      Icons.home,
                    ),
                    title: const Text('Home'),
                    onTap: () {},
                  ),
                ),
                Container(
                  color: Colors.green[600],
                  child: ListTile(
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                    ),
                    leading: Icon(
                      Icons.shopping_bag,
                    ),
                    title: const Text('Projects'),
                    onTap: () {},
                  ),
                ),
                Container(
                  color: Colors.green[600],
                  child: ListTile(
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                    ),
                    leading: Icon(
                      Icons.document_scanner,
                    ),
                    title: const Text('Report'),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 400,
                ),
                Container(
                  color: Colors.green[600],
                  child: ListTile(
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                    ),
                    leading: Icon(
                      Icons.settings,
                    ),
                    title: const Text('Settings'),
                    onTap: () {},
                  ),
                ),
                Container(
                  color: Colors.green[600],
                  child: ListTile(
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                    ),
                    leading: Icon(
                      Icons.call,
                    ),
                    title: const Text('About Us'),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              child: Image.asset("assets/chibimaruko.jpeg"),
            ),
            SizedBox(
                height: 200,
                width: 250,
                child: Text(
                  "Learning flutter has been an excellent experience. I have never had fun learning any language or framework besides flutter. What made me love it is that you can see the output and progress of the work on the screen. It is easier to know what needs to be changed and what does not. I remember my first time completing a project, and it was joyous. ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ))
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
            Container(
              width: MediaQuery.of(context).size.width < 600
                  ? MediaQuery.of(context).size.width / 2
                  : MediaQuery.of(context).size.width / 3,
              child: Container(
                child: Drawer(
                  backgroundColor: Colors.green[400],
                  child: ListView(
                    padding: EdgeInsets.all(24),
                    children: [
                      Container(
                        color: Colors.green[600],
                        child: ListTile(
                          textColor: Colors.white,
                          iconColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1),
                          ),
                          leading: Icon(
                            Icons.home,
                          ),
                          title: const Text('Home'),
                          onTap: () {},
                        ),
                      ),
                      Container(
                        color: Colors.green[600],
                        child: ListTile(
                          textColor: Colors.white,
                          iconColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1),
                          ),
                          leading: Icon(
                            Icons.shopping_bag,
                          ),
                          title: const Text('Projects'),
                          onTap: () {},
                        ),
                      ),
                      Container(
                        color: Colors.green[600],
                        child: ListTile(
                          textColor: Colors.white,
                          iconColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1),
                          ),
                          leading: Icon(
                            Icons.document_scanner,
                          ),
                          title: const Text('Report'),
                          onTap: () {},
                        ),
                      ),
                      SizedBox(
                        height: 400,
                      ),
                      Container(
                        color: Colors.green[600],
                        child: ListTile(
                          textColor: Colors.white,
                          iconColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1),
                          ),
                          leading: Icon(
                            Icons.settings,
                          ),
                          title: const Text('Settings'),
                          onTap: () {},
                        ),
                      ),
                      Container(
                        color: Colors.green[600],
                        child: ListTile(
                          textColor: Colors.white,
                          iconColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1),
                          ),
                          leading: Icon(
                            Icons.call,
                          ),
                          title: const Text('About Us'),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 120,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  child: Image.asset("assets/chibimaruko.jpeg"),
                ),
                SizedBox(
                    height: 200,
                    width: 250,
                    child: Text(
                      "Learning flutter has been an excellent experience. I have never had fun learning any language or framework besides flutter. What made me love it is that you can see the output and progress of the work on the screen. It is easier to know what needs to be changed and what does not. I remember my first time completing a project, and it was joyous. ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ))
              ],
            ),
          ],
        ),
      ));
}
