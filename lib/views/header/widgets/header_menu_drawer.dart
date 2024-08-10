import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:ngoprek_code_blog/utils/menu.dart';
import 'package:ngoprek_code_blog/views/header/header.dart';
import 'package:ngoprek_code_blog/views/widgets/app_logo.dart';

class HeaderMenuDrawer extends StatelessWidget {
  const HeaderMenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HeaderController>();
    return Drawer(
      child: Container(
        color: kPrimaryColor.withOpacity(0.1),
        child: Obx(
          () => ListView(
            children: [
              const DrawerHeader(
                child: Center(child: AppLogo()),
              ),
              ...List.generate(
                Menu.values.length,
                (index) => DrawerItem(
                  isActive: controller.selectedMenu.value == Menu.values[index],
                  title: Menu.values[index].label,
                  onTap: () => controller.selectedMenu(Menu.values[index]),
                ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                title: const Text('Theme'),
                trailing: Switch(
                  value: controller.isLightMode.value,
                  onChanged: (isLightMode) => controller.isLightMode(
                    isLightMode,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onTap;

  const DrawerItem({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
        ),
        selected: isActive,
        selectedTileColor: kPrimaryColor,
        onTap: onTap,
        title: Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.white : null,
          ),
        ),
      ),
    );
  }
}
