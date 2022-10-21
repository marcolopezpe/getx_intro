import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/06-reactivos/contador_reactivo_controller.dart';

class ContadorReactivoView extends StatelessWidget {
  const ContadorReactivoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContadorReactivoController>(
      init: ContadorReactivoController(),
      builder: (controller) {
        return Scaffold(
            appBar: AppBar(
              title: const Text("Reactivos y Observables"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Obx(
                    () => Text(
                      "${controller.counter}",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Obx(
                    () => Text(
                      "${controller.counter2}",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: controller.decrement,
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 10.0),
                FloatingActionButton(
                  onPressed: controller.increment,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ));
      },
    );
  }
}
