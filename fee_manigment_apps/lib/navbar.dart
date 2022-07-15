import 'package:flutter/material.dart';
import 'students.dart';
class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('FEE MANAGMENT'),
            accountEmail: Text('Feemanagment@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://tse2.mm.bing.net/th?id=OIP.S3gzuShCpqfakNNGcBf6qwHaHa&pid=Api&P=0&w=198&h=198',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.group_add_outlined),
            title: Text('students'),
            onTap: () => {  Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => students()),
            ),
              },
          ),
          ListTile(
            leading: Icon(Icons.group_add_outlined),
            title: Text('Teachers'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('class'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('class section'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.money),
            title: Text('Fee Structure'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.money_off),
            title: Text('Fee Assign'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}