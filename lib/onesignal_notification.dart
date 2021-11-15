import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import 'date_time_picker.dart';

class NotificationIntegration extends StatefulWidget {
  const NotificationIntegration({Key? key}) : super(key: key);

  @override
  _NotificationIntegrationState createState() => _NotificationIntegrationState();
}

class _NotificationIntegrationState extends State<NotificationIntegration> {
  static const String oneSignalAppId = "824a52b5-8be2-4370-a34a-d8ed8cb55e0c";
  DateTime currentDate = DateTime.now();

  Future<void> initPlatformState() async {
    OneSignal.shared.setAppId(oneSignalAppId);
  }

  @override
  void initState()
  {
    super.initState();
    initPlatformState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text("Move to date Picker Page"),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DatePicker(),));
          },
        )
      ),
    );
  }
}
