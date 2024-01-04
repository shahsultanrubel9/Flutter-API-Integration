import 'package:flutter/material.dart';
import 'package:flutter_application_api/Controllers/home_controller.dart';
import 'package:flutter_application_api/Models/home_model.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Center(child: Text('Flutter Get API Integration')),
      ),
      body: GetBuilder<HomeController>(builder: (_) {
        return Center(
          child: homeController.loading
              ? CircularProgressIndicator()
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: homeController.list.length,
                  itemBuilder: (context, index) {
                    ResponseModel data = homeController.list[index];
                    return Card(
                      child: ListTile(
                        leading: Text(data.id.toString()),
                        title: Text(data.title.toString()),
                        subtitle: Text(data.body.toString()),
                      ),
                    );
                  }),
        );
      }),
    );
  }
}
