import 'package:flutter/material.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  onTap: () {
                    Navigator.pushNamed(context, "/fourth");
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
