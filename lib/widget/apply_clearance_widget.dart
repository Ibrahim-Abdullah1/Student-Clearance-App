import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ApplyClearenceScreen extends StatefulWidget {
  final String documentId;

  ApplyClearenceScreen({super.key, required this.documentId});

  @override
  State<ApplyClearenceScreen> createState() => _ApplyClearenceScreenState();
}

class _ApplyClearenceScreenState extends State<ApplyClearenceScreen> {
  List<Map<String, dynamic>> rows = [
    {'SR no': '1.', 'Department': 'Librarian', 'Applied': false},
    {'SR no': '2.', 'Department': 'ElectronicLab', 'Applied': false},
    {'SR no': '3.', 'Department': 'ComputerLab', 'Applied': false},
    {'SR no': '4.', 'Department': 'ProjectCoordinator', 'Applied': false},
    {'SR no': '5.', 'Department': 'PrintingOffice', 'Applied': false},
    {'SR no': '6.', 'Department': 'CafeteriaIncharge', 'Applied': false},
    {'SR no': '7.', 'Department': 'TransportIncharge', 'Applied': false},
    {'SR no': '8.', 'Department': 'BoysHostel', 'Applied': false},
    {'SR no': '9.', 'Department': 'AluminiOffice', 'Applied': false},
    {'SR no': '10.', 'Department': 'KicsitStore', 'Applied': false},
    {'SR no': '11.', 'Department': 'Accounts', 'Applied': false},
    {'SR no': '12.', 'Department': 'SportsIncharge', 'Applied': false},
    {'SR no': '13.', 'Department': 'CardOffice', 'Applied': false},
    {'SR no': '14.', 'Department': 'HODKicsit', 'Applied': false},
  ];
  @override
  void initState() {
    super.initState();
    fetchClearanceStatus();
  }

  void applyClearance(int index) async {
    setState(() {
      rows[index]['Applied'] = true;
    });

    String department = rows[index]['Department'].replaceAll(' ', '');

    await FirebaseFirestore.instance
        .collection('students')
        .doc(widget.documentId)
        .update({'$department.status': 'Pending'});
  }

  void fetchClearanceStatus() async {
    final DocumentSnapshot doc = await FirebaseFirestore.instance
        .collection('students')
        .doc(widget.documentId)
        .get();

    for (int i = 0; i < rows.length; i++) {
      String department = rows[i]['Department'].replaceAll(' ', '');
      String status = doc.get('$department.status');

      // Check the status from Firestore and update local data
      if (status == 'Not Requested') {
        rows[i]['Applied'] = false;
        rows[i]['Status'] = 'Apply';
      } else if (status == 'Pending') {
        rows[i]['Applied'] = true;
        rows[i]['Status'] = 'Pending';
      } else if (status == 'Cleared') {
        rows[i]['Applied'] = true;
        rows[i]['Status'] = 'Cleared';
      }
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[300],
        title: Text('Apply Clearance'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: rows.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: Text(rows[index]['SR no']),
              title: Text(rows[index]['Department']),
              trailing: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.teal[300],
                ),
                onPressed: () {
                  applyClearance(index);
                },
                child: rows[index]['Applied']
                    ? Text('Pending', style: TextStyle(color: Colors.orange))
                    : Text('Apply'),
              ),
            ),
          );
        },
      ),
    );
  }
}
