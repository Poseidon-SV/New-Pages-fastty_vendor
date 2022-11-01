import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Today',
  'Yesterday',
  'This week',
  'This month'
];

class CustomerComplaints extends StatefulWidget {
  const CustomerComplaints({Key? key}) : super(key: key);

  @override
  State<CustomerComplaints> createState() => _CustomerComplaintsState();
}

class _CustomerComplaintsState extends State<CustomerComplaints> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Complaints'),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Customer Complaints',
                  style: TextStyle(fontSize: 22),
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  elevation: 10,
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
