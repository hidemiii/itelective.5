import 'package:flutter/material.dart';

class RightDrawer extends StatefulWidget {
  const RightDrawer({super.key});

  @override
  State<RightDrawer> createState() => _RightDrawerState();
}

class _RightDrawerState extends State<RightDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width < 600
          ? MediaQuery.of(context).size.width / 2
          : MediaQuery.of(context).size.width / 3,
      child: Container(
        child: Drawer(
          backgroundColor: Colors.green[400],
          child: ListView(
            padding: EdgeInsets.all(24),
            children: [
              SizedBox(
                height: 280,
                child: Container(
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      width: 500,
                      height: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Center(
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/kogachi.jpeg"),
                              radius: 40,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Hidemi Kogachi",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              letterSpacing: 1,
                              color: Colors.grey[600],
                            ),
                          ),
                          Text(
                            "I enjoy drinking a cup of coffee every day",
                            style: TextStyle(
                              fontSize: 5,
                              letterSpacing: 2,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "172",
                                    style: TextStyle(
                                      color: Colors.purple[400],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    "POSTS",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "47",
                                    style: TextStyle(
                                      color: Colors.purple[400],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    "FOLLOWERS",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "20",
                                    style: TextStyle(
                                      color: Colors.purple[400],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    "FOLLOWING",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "FOLLOW",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.purpleAccent),
                                ),
                              ),
                              SizedBox(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "MESSAGE",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.pinkAccent),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              Container(
                color: Colors.green[600],
                child: ListTile(
                  textColor: Colors.white,
                  iconColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1),
                  ),
                  leading: Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/", ModalRoute.withName("/"));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
