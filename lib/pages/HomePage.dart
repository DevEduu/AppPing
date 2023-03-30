import 'package:apping/const.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:apping/controller/Gerador.dart';
import 'package:apping/widgets/CustonButton.dart';
import 'package:apping/widgets/CustonFormField.dart';
import 'package:apping/widgets/OutputCmd.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GeradorController controller = Get.put(GeradorController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColorScafold,
        body: Column(children: [
          const SizedBox(
            height: 50,
          ),
          CustonInputFormField(
            controller: controller,
          ),
          OutputCmd(
            controller: controller,
          ),
          CustonButton(
            onPressed: () {
              controller.outputPing();
              controller.clearlistView();
              controller.dropColorBorder();
            },
          ),
          const SizedBox(
            height: 24,
          ),
          const Menu()
        ]),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(color: bgColorInput),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              padding: const EdgeInsets.all(0.0),
              onPressed: () {
                Navigator.pushNamed(context, '/history');
              },
              icon: Icon(
                LucideIcons.history,
                color: myWhite,
                size: size,
              ),
            ),
            IconButton(
              padding: const EdgeInsets.all(0.0),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: Icon(
                LucideIcons.zap,
                color: myWhite,
                size: size,
              ),
            ),
            IconButton(
              padding: const EdgeInsets.all(0.0),
              onPressed: () {
                Navigator.pushNamed(context, '/setting');
              },
              icon: Icon(
                LucideIcons.settings,
                color: myWhite,
                size: size,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
