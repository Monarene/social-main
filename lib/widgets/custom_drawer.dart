import 'package:flutter/material.dart';
import 'package:flutter_social_ui/data/data.dart';
import 'package:flutter_social_ui/screens/HomeScreen.dart';
import 'package:flutter_social_ui/screens/ProfileScreen.dart';
import 'package:flutter_social_ui/screens/loginscreen.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Image(
                height: 200,
                width: double.infinity,
                image: AssetImage(currentUser.backgroundImageUrl),
                fit: BoxFit.cover,
              ),
              Positioned(
                  bottom: 20,
                  left: 20,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 3,
                                color: Theme.of(context).primaryColor)),
                        child: ClipOval(
                          child: Image(
                            image: AssetImage(currentUser.profileImageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        currentUser.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5),
                      )
                    ],
                  ))
            ],
          ),
          DrawerItem(
            icon: Icon(Icons.dashboard),
            title: "Home",
            onTap: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen())),
          ),
          DrawerItem(
            icon: Icon(Icons.chat),
            title: "Chat",
            onTap: () {},
          ),
          DrawerItem(
            icon: Icon(Icons.account_circle),
            title: "Your Profile",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => ProfileScreen(
                            user: currentUser,
                          )));
            },
          ),
          DrawerItem(
            icon: Icon(Icons.settings),
            title: "Settings",
            onTap: () {},
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: DrawerItem(
                icon: Icon(Icons.directions_run),
                title: "Logout",
                onTap: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => LoginScreen())),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final Icon icon;
  final String title;
  final Function onTap;

  const DrawerItem({this.icon, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(fontSize: 20),
      ),
      onTap: onTap,
    );
  }
}
