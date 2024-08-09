import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:ngoprek_code_blog/responsive.dart';
import 'package:ngoprek_code_blog/utils/menu.dart';
import 'package:ngoprek_code_blog/views/header/widgets/header_post.dart';
import 'package:ngoprek_code_blog/views/header/widgets/header_settings.dart';
import 'package:ngoprek_code_blog/views/header/widgets/header_menu.dart';
import 'package:ngoprek_code_blog/views/widgets/app_logo.dart';

class HeaderController extends GetxController {
  final selectedMenu = Menu.home.obs;
  final isLightMode = true.obs;
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HeaderController());
    return SizedBox(
      width: double.infinity,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Expanded(child: AppLogo()),
                      HeaderMenu(),
                      Expanded(child: HeaderSettings()),
                    ],
                  ),
                  Obx(
                    () => AnimatedSwitcher(
                      duration: kDefaultDuration,
                      child: _renderBody(
                        context,
                        menu: controller.selectedMenu.value,
                      ),
                      transitionBuilder: (child, animation) => SizeTransition(
                        sizeFactor: animation,
                        child: child,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _renderBody(
    BuildContext context, {
    required Menu menu,
  }) {
    switch (menu) {
      case Menu.home:
        return !Responsive.isMobile(context)
            ? const Padding(
                padding: EdgeInsets.only(
                  top: kDefaultPadding,
                ),
                child: HeaderPost(),
              )
            : const SizedBox.shrink();
      case Menu.about:
        return const SizedBox.shrink();
      case Menu.contact:
        return const SizedBox.shrink();
    }
  }
}
