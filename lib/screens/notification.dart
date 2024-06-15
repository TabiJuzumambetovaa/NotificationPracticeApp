import 'package:flutter/material.dart';
import 'package:flutter_notification_0902/notifi_service.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NOTIFICATION"),
      ),
      body: Center(child: ElevatedButton(onPressed: (){
        NotificationService().showNotification(title: "Title",body: "Works");
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo,shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ), child:const Text("Click"),),
    ));
  }
}
