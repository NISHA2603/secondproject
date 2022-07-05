import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../services/apis/api.dart';
import '../../services/models/model.dart';
import 'app_details_screen.dart';

class AppScreen extends StatelessWidget {
  AppScreen({
    Key? key,
  }) : super(key: key);

  var api = Api();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Information'),
      ),
      body: Container(
        child: FutureBuilder(
            future: api.fetchApi(),
            builder: (context, AsyncSnapshot<Model> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.result!.length,
                    itemBuilder: (context, i) {
                      return Container(
                        color: Colors.blueGrey,
                        child: ListTile(onTap: () {
                          Get.to(AppDetails(
                            app_name: snapshot.data!.result![i].appName!,
                            app_version:
                                snapshot.data!.result![i].appVersion.toString(),
                            app_build: snapshot.data!.result![i].appBuild!,
                          ));
                        }),
                      );
                    });
              } else if (snapshot.hasError) {
                return Container(
                  child: Text(snapshot.error.toString()),
                );
              } else {
                return Container(
                  child: CircularProgressIndicator(),
                  color: Colors.black,
                );
              }
            }),
      ),
    );
  }
}
