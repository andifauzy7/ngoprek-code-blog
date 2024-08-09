import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ngoprek_code_blog/views/header/header.dart';
import 'package:ngoprek_code_blog/utils/menu.dart';
import 'package:ngoprek_code_blog/views/header/widgets/header_menu_item.dart';

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HeaderController>();
    return Obx(
      () => Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          Menu.values.length,
          (index) => HeaderMenuItem(
            text: Menu.values[index].label,
            isActive: controller.selectedMenu.value == Menu.values[index],
            onTap: () => controller.selectedMenu(Menu.values[index]),
          ),
        ),
      ),
    );
  }
}
