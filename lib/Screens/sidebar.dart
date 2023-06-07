import 'package:flutter/material.dart';
import 'package:flutterapp/Screens/home_screen.dart';
import 'package:flutterapp/Screens/login_screen.dart';
import 'package:flutterapp/Screens/profile.dart';


class Sidebar extends StatelessWidget {
  final String selectedItem;
  final Function(String) onItemSelected;

  const Sidebar({
    Key? key,
    required this.selectedItem,
    required this.onItemSelected,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(72, 109, 218, 1),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage('images/panga.png'),
                  width: 140,
                  height: 140,
                ),
                SizedBox(height: 50),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Text(
                        'CareTeQ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Dashboard'),
            selected: selectedItem == 'Dashboard',
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Reports'),
            selected: selectedItem == 'Reports',
            onTap: () {
              onItemSelected('Reports');
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.person),
          //   title: Text('Profile'),
          //   selected: selectedItem == 'Editable',
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => ProfilePage(),
          //       ),
          //     );
          //   },
          // ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
