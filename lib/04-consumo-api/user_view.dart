import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/04-consumo-api/user_controller.dart';
import 'package:getx_intro/05-pasar-datos/user_detail_view.dart';

class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
      init: UserController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('User API'),
          ),
          body: GetBuilder<UserController>(
            id: "user",
            builder: (_) {
              return ListView.builder(
                itemCount: controller.users.length,
                itemBuilder: (_, index) {
                  final user = controller.users[index];
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage("${user.avatar}"),
                    ),
                    title: Text("${user.firstName} ${user.lastName}"),
                    subtitle: Text("${user.email}"),
                    onTap: () {
                      /*Map<String, dynamic> args = {
                        "user": user,
                        "profile": "",
                        "idProducto": 1,
                      };*/
                      Get.to(() => const UserDetailView(), arguments: user);
                    },
                    trailing: const Icon(Icons.arrow_forward_ios),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
