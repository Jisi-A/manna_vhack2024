import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:manna_vhack2024/components/custom_appbar.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 248, 255, 1),
      appBar: TAppBar(
        title: 'My Profile',
        isIcon: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.fromLTRB(12, 16, 12, 16),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 36,
                    backgroundImage: AssetImage(
                      'assets/avatar.png'
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Handsome guy',
                        style: TextStyle(
                          fontFamily: 'RobotoBlack',
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 30,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Edit',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Divider(
              color: Colors.grey[200],
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Text(
                        '10',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'Follows',
                        style: TextStyle(
                          fontFamily: 'Raleway'
                        ),
                      ),
                    ]
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Text(
                        '27',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(
                          fontFamily: 'Raleway'
                        ),
                      ),
                    ]
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Text(
                        '1',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'Plants',
                        style: TextStyle(
                          fontFamily: 'Raleway'
                        ),
                      ),
                    ]
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Personal Info'
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.lock),
                title: Text(
                  'Login and Security'
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.privacy_tip),
                title: Text(
                  'Data and Privacy'
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text(
                  'Notification Preferences'
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.mail),
                title: Text(
                  'Message Center'
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.help_outline),
                title: Text(
                  'Help'
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 4, 12, 10),
            child: Card(
              color: Colors.red[500],
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Log out',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
