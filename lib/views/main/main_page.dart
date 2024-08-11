import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:ngoprek_code_blog/views/footer/footer.dart';
import 'package:ngoprek_code_blog/views/header/header.dart';
import 'package:ngoprek_code_blog/views/header/widgets/header_menu_drawer.dart';
import 'package:ngoprek_code_blog/views/home/home_page.dart';

class MainController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  void openCloseDrawer() {
    if (scaffoldKey.currentState?.isDrawerOpen ?? false) {
      scaffoldKey.currentState?.openEndDrawer();
    } else {
      scaffoldKey.currentState?.openDrawer();
    }
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: const HeaderMenuDrawer(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: kDefaultPadding),
            Header(),
            SizedBox(height: kDefaultPadding),
            HomePage(),
            SizedBox(height: kDefaultPadding * 2),
            Footer(),
          ],
        ),
      ),
    );
  }
}
