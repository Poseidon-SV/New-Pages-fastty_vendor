import 'package:flutter/material.dart';
import 'package:new_pages_fastty_vendor/manage_notification.dart';
import 'package:new_pages_fastty_vendor/order_history.dart';
import 'package:new_pages_fastty_vendor/customer_complaints.dart';
import 'package:new_pages_fastty_vendor/sales_history.dart';
import 'package:new_pages_fastty_vendor/invoices.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromRGBO(73, 193, 112, 1),
        ),
      ),
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool pushNotification = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromRGBO(73, 193, 112, 1),
        ),
      ),
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                title: Text('Schedule Off time in advance'),
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
              SizedBox(height: 150,),
              Center(child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(73, 193, 112, 1), // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () { },
                child: Text('Set time + '),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
