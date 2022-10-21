import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/05-pasar-datos/user_detail_controller.dart';

class UserDetailView extends StatelessWidget {
  const UserDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserDetailController>(
      init: UserDetailController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Detalle de Usuario'),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage("${controller.user.avatar}"),
                ),
                Text(
                    "${controller.user.firstName} ${controller.user.lastName}"),
              ],
            ),
          ),
        );
      },
    );
  }
}
