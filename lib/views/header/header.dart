import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:ngoprek_code_blog/responsive.dart';
import 'package:ngoprek_code_blog/utils/menu.dart';
import 'package:ngoprek_code_blog/views/header/widgets/header_about.dart';
import 'package:ngoprek_code_blog/views/header/widgets/header_post.dart';
import 'package:ngoprek_code_blog/views/header/widgets/header_menu.dart';
import 'package:ngoprek_code_blog/views/main/main_page.dart';
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
    final mainController = Get.find<MainController>();
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
                  Row(
                    children: [
                      (Responsive.isDesktop(context))
                          ? const SizedBox.shrink()
                          : Padding(
                              padding: const EdgeInsets.only(
                                right: kDefaultPadding * 0.5,
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.menu),
                                onPressed: () {
                                  mainController.openCloseDrawer();
                                },
                              ),
                            ),
                      (Responsive.isDesktop(context))
                          ? const Expanded(child: AppLogo())
                          : const AppLogo(),
                      (Responsive.isDesktop(context))
                          ? const HeaderMenu()
                          : const SizedBox.shrink(),
                      Expanded(
                        child: Row(
                          children: [
                            (!Responsive.isMobile(context))
                                ? const Spacer(flex: 1)
                                : const SizedBox(width: kDefaultPadding),
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
                            (Responsive.isDesktop(context))
                                ? Padding(
                                    padding: const EdgeInsets.only(
                                      left: kDefaultPadding * 0.5,
                                    ),
                                    child: Obx(
                                      () => Switch(
                                        value: controller.isLightMode.value,
                                        onChanged: (isLightMode) =>
                                            controller.isLightMode(
                                          isLightMode,
                                        ),
                                      ),
                                    ),
                                  )
                                : const SizedBox.shrink(),
                          ],
                        ),
                      ),
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
        return const Padding(
          padding: EdgeInsets.only(
            top: kDefaultPadding,
          ),
          child: HeaderAbout(),
        );
      case Menu.contact:
        return const SizedBox.shrink();
    }
  }
}
