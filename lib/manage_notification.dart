import 'package:flutter/material.dart';


class ManageNotification extends StatefulWidget {
  @override
  State<ManageNotification> createState() => _ManageNotificationState();
}

class _ManageNotificationState extends State<ManageNotification> {
  bool pushNotification = false;
  bool turnNotification = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Manage Notification'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text('Allow push notification'),
                subtitle: Switch(
                  onChanged: (value) {
                    setState(() {
                      pushNotification = value;
                    });
                  },
                  value: pushNotification,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.greenAccent,
                  inactiveThumbColor: Colors.black87,
                  inactiveTrackColor: Colors.grey,
                ),
              ),
              const Divider(),
              ListTile(
                title: Text('Turn off notification'),
                subtitle: Switch(
                  onChanged: (value) {
                    setState(() {
                      turnNotification = value;
                    });
                  },
                  value: turnNotification,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.greenAccent,
                  inactiveThumbColor: Colors.black87,
                  inactiveTrackColor: Colors.grey,
                ),
              ),
            ],
          ),
        ));
  }
}
