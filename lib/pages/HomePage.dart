import 'package:apping/const.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:apping/controller/Gerador.dart';
import 'package:apping/widgets/CustonButton.dart';
import 'package:apping/widgets/CustonFormField.dart';
import 'package:apping/widgets/OutputCmd.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final GeradorController controller = Get.put(GeradorController());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: bgColorInput,
              selectedItemColor: myGreen,
              onTap: controller.onTabTapped,
              currentIndex: controller.indiceAtual.value,
              // ignore: prefer_const_literals_to_create_immutables
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(
                    LucideIcons.history,
                  ),
                  label: AppLocalizations.of(context)!.labelHistory,
                ),
                const BottomNavigationBarItem(
                  icon: Icon(LucideIcons.zap),
                  label: 'Ping',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(LucideIcons.settings),
                  label: 'Settings',
                ),
              ]),
          backgroundColor: bgColorScafold,
          body: controller.pages[controller.indiceAtual.value],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
      // const Menu()
    ]);
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
