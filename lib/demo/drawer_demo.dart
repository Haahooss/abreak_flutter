import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Abreak',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('yadi660418@163.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://yixiangpro.com/abreakimg/headpic.png'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                  image: NetworkImage(
                      'https://yixiangpro.com/abreakimg/headpic.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black54.withOpacity(0.6), BlendMode.screen)),
            ),
          ),
          ListTile(
            title: Text(
              'Messages',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.message, color: Colors.black38, size: 20.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Favorite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.favorite, color: Colors.black38, size: 20.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Setting',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.settings, color: Colors.black38, size: 20.0),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
