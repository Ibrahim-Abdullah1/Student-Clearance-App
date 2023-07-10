import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsAppIcon extends StatelessWidget {
  final String phoneNumber = "+923329548740"; // Replace with your phone number

  void launchWhatsApp() async {
    final Uri whatsappUrl = Uri.parse("https://wa.me/$phoneNumber");

    // Launch WhatsApp
    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl.toString() as Uri);
    } else {
      print("Could not launch WhatsApp");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.contact_phone_outlined),
            onPressed: launchWhatsApp,
            iconSize: 50,
            color: Colors.green,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Click to Contact us!",
            style: TextStyle(color: Colors.greenAccent),
          )
        ],
      ),
    );
  }
}
