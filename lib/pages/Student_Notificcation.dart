import "package:cloud_firestore/cloud_firestore.dart";
import "package:flutter/material.dart";

class StudentNotification extends StatelessWidget {
  final String documentId;
  const StudentNotification({super.key, required this.documentId});

  Future<DocumentSnapshot> getStudentData() async {
    return FirebaseFirestore.instance
        .collection('students')
        .doc(documentId)
        .get();
  }

  String getSubtitle(String? status, String? liabilityPending) {
    if (status == null || status == "Not Requested") {
      return "";
    }

    if (status == "Pending") {
      if (liabilityPending != null && liabilityPending.isNotEmpty) {
        return liabilityPending;
      } else {
        return "Your Clearance is received and pending";
      }
    }

    if (status == "Cleared") {
      return "Cleared";
    }

    return "Pending";
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
      future: getStudentData(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else {
          if (snapshot.hasError) {
            return Text("Error: ${snapshot.error}");
          } else {
            Map<String, dynamic> studentData =
                snapshot.data!.data() as Map<String, dynamic>;

            List<String> departments = [
              'Accounts',
              'AluminiOffice',
              'BoysHostel',
              'CardOffice',
              'ComputerLab',
              'ElectronicLab',
              'HODKicsit',
              'KicsitStore',
              'Librarian',
              'PrintingOffice',
              'ProjectCoordinator',
              'TransportIncharge',
            ];

            // Filter departments based on status nullability
            departments.removeWhere(
                (department) => studentData[department]['status'] == null);

            return ListView.builder(
              itemCount: departments.length,
              itemBuilder: (BuildContext context, int index) {
                String department = departments[index];
                String? status = studentData[department]['status'];
                String? liabilityPending =
                    studentData[department]['liabilityPending'];
                String subtitle = getSubtitle(status, liabilityPending);

                return (subtitle != "")
                    ? ListTile(
                        title: Text(department),
                        subtitle: Text(subtitle),
                      )
                    : SizedBox
                        .shrink(); // Return an empty widget if there's no subtitle
              },
            );
          }
        }
      },
    );
  }
}























// class StudentNotification extends StatelessWidget {
//   final String documentId;
//   const StudentNotification({super.key, required this.documentId});


//   Future<DocumentSnapshot> getStudentData() async {
    
//     return FirebaseFirestore.instance
//         .collection('students')
//         .doc(documentId)
//         .get();
//   }

//   String getSubtitle(String status, String liabilityPending) {
//     switch (status) {
//       case "Not Requested":
//         return "Not Applied yet";
//       case "Pending":
//         if (liabilityPending.isEmpty) {
//           return "Your Clearance is received and pending";
//         } else {
//           return liabilityPending;
//         }
//       case "Cleared":
//         return "Cleared";
//       default:
//         return "Pending";
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<DocumentSnapshot>(
//       future: getStudentData(),
//       builder:
//           (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return CircularProgressIndicator();
//         } else {
//           if (snapshot.hasError) {
//             return Text("Error: ${snapshot.error}");
//           } else {
//             Map<String, dynamic> studentData =
//                 snapshot.data!.data() as Map<String, dynamic>;

//             List<String> departments = [
//               'Accounts',
//               'AluminiOffice',
//               'BoysHostel',
//               'CardOffice',
//               'ComputerLab',
//               'ElectronicLab',
//               'HODKicsit',
//               'KicsitStore',
//               'Librarian',
//               'PrintingOffice',
//               'ProjectCoordinator',
//               'TransportIncharge',
//             ];

//             return ListView.builder(
//               itemCount: departments.length,
//               itemBuilder: (BuildContext context, int index) {
//                 String department = departments[index];
//                 String status = studentData[department]['status'] ?? 'N/A';
//                 String liabilityPending =
//                     studentData[department]['liabilityPending'] ?? 'N/A';
//                 String subtitle = getSubtitle(status, liabilityPending);

//                 return ListTile(
//                   title: Text(department),
//                   subtitle: Text(subtitle),
//                 );
//               },
//             );
//           }
//         }
//       },
//     );
//   }
// }
