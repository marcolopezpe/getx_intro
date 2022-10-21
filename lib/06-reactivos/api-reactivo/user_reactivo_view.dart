import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/06-reactivos/api-reactivo/user_reactivo_controller.dart';

class UserReactivoView extends StatelessWidget {
  const UserReactivoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserReactivoController>(
      init: UserReactivoController(),
      builder: (controller) {
        print("Dibujando Widgets!");
        return Scaffold(
          appBar: AppBar(
            title: const Text("User Reactivo y Observable"),
            actions: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Obx(() => Text("${controller.counter}")),
              )
            ],
          ),
          body: Obx(
            () {
              print("Print ListView!");
              return controller.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
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
                          trailing: GestureDetector(
                            child: Obx(
                              () {
                                print("Click Favorite!");
                                return user.isFavorite!.value
                                    ? const Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      )
                                    : const Icon(
                                        Icons.favorite_border_outlined);
                              },
                            ),
                            onTap: () => controller.isFavorite(user),
                          ),
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
