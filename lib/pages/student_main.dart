import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:student_clearance_app/pages/Student_Notificcation.dart';
import 'package:student_clearance_app/widget/Apply_clearance_widget.dart';

import '../widget/contact_help.dart';
import 'login_page.dart';

class studentmain extends StatefulWidget {
  final String documentId;
  const studentmain({super.key, required this.documentId});

  @override
  State<studentmain> createState() => _studentmainState();

  Future<DocumentSnapshot> getStudentData() async {
    return FirebaseFirestore.instance
        .collection('students')
        .doc(documentId)
        .get();
  }
}

class _studentmainState extends State<studentmain> {
  int currentindex = 0;

  String? usermail;
  String? userid;

  List<IconData> navigationIcons = [
    FontAwesomeIcons.fill,
    FontAwesomeIcons.bell,
    FontAwesomeIcons.phone,
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPageScreen()),
          );
        }),
        tooltip: 'Exit',
        child: const Icon(Icons.exit_to_app),
      ),
      body: IndexedStack(
        index: currentindex,
        children: [
          ApplyClearenceScreen(documentId: widget.documentId),
          // StudentDashboardOneScreen(),
          StudentNotification(documentId: widget.documentId),
          WhatsAppIcon(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: const EdgeInsets.only(
          right: 12.2,
          left: 12.2,
          bottom: 24.2,
        ),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(50)),
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 20,
                offset: Offset(2, 2),
              ),
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < navigationIcons.length; i++) ...<Expanded>{
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentindex = i;
                    });
                  },
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          navigationIcons[i],
                          color: i == currentindex
                              ? Colors.tealAccent
                              : Colors.black38,
                          size: i == currentindex ? 36 : 30,
                        ),
                        currentindex == i
                            ? Container(
                                margin: const EdgeInsets.only(top: 6),
                                height: 3,
                                width: 22,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  color: Colors.tealAccent,
                                ))
                            : SizedBox(),
                      ],
                    ),
                  ),
                )),
              }
            ],
          ),
        ),
      ),
    );
  }
}
