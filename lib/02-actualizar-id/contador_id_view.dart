import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/02-actualizar-id/contador_id_controller.dart';

class ContadorIdView extends StatelessWidget {
  const ContadorIdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContadorIdController>(
      init: ContadorIdController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Contador GetX x IDs"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('You have pushed the button this many times:'),
                GetBuilder<ContadorIdController>(
                  id: "increment",
                  builder: (_) {
                    return Text(
                      '${controller.counter1}',
                      style: Theme.of(context).textTheme.headline4,
                    );
                  },
                ),
                GetBuilder<ContadorIdController>(
                  id: "decrement",
                  builder: (_) {
                    return Text(
                      '${controller.counter2}',
                      style: Theme.of(context).textTheme.headline4,
                    );
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: controller.increment,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 10),
              FloatingActionButton(
                onPressed: controller.decrement,
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        );
      },
    );
  }
}
