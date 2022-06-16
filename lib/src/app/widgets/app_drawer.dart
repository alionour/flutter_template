import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF242d41),
      elevation: 0,
      width: MediaQuery.of(context).size.width * 0.62,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF75787d),
            ),
            accountEmail: Text('jasminemoore21@gmail.com'),
            accountName: Text('Jasmine Moore'),
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.transparent,
                foregroundImage: AssetImage('assets/images/profile.jpeg')),
            // child: Image.asset('assets/images/profile.jpeg')),
          ),
          ListTile(
            title: const Text(
              'Contact Imformation',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Professional',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Bids',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Jobs',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Tools',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Teams',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
