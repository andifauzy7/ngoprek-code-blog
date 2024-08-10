import 'package:flutter/material.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:ngoprek_code_blog/views/widgets/app_logo.dart';

class HeaderAbout extends StatelessWidget {
  const HeaderAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const AppLogo(),
          Text(
            'Flutter Mobile Development',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: kDefaultPadding * 0.5),
          Text(
            '''
Introducing Ngoprek Code, one of thousands of educational programming media 🚀. Through this platform, we will try to share and learn together more specifically about Mobile Programming (Flutter), General information about 'programmers', Tips & Tricks, And other related content.
''',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
