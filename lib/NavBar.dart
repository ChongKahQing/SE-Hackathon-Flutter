import 'package:demo2/DiaryPage/calendar.dart';
import 'package:demo2/Login/LoginUi.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Drawer(
      width: size.width * 0.5,
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 160,
            child: DrawerHeader(
              child: Container(
                height: 30,
                width: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage("assets/MoodSpaceremovebg1.png"),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://e0.pxfuel.com/wallpapers/386/302/desktop-wallpaper-dark-light-relax-black.jpg')),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Account'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Diary'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CalendarPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Mood Log'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            title: Text('Log out'),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
              showDialog(
                  builder: (ctxt) {
                    return AlertDialog(
                        title: const Text("Logout"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Do you Really want to logout?"),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  child: Text("Cancel"),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                ElevatedButton(
                                  child: Text("Logout"),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginUI()));
                                  },
                                )
                              ],
                            ),
                          ],
                        ));
                  },
                  context: context);
            },
          ),
        ],
      ),
    );
  }
}
