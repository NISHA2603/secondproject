import 'package:flutter/material.dart';

class AppDetails extends StatelessWidget {
  const AppDetails({Key? key, required this.app_name, required this.app_version, required this.app_build}) : super(key: key);


  final String app_name;
  final String app_version;
  final String app_build;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(app_name),
            Text(app_version),
            Text(app_build),


          ],
        ),
      ),
    );
  }
}
