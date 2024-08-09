import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:ngoprek_code_blog/views/header/header.dart';

class HeaderSettings extends StatelessWidget {
  const HeaderSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HeaderController>();
    return Obx(
      () => Row(
        children: [
          const Spacer(flex: 1),
          Flexible(
            flex: 2,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                suffixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: kDividerColor,
              ),
            ),
          ),
          const SizedBox(width: kDefaultPadding),
          Switch(
            value: controller.isLightMode.value,
            onChanged: (isLightMode) => controller.isLightMode(
              isLightMode,
            ),
          ),
        ],
      ),
    );
  }
}
