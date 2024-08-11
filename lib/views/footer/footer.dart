import 'package:flutter/material.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:ngoprek_code_blog/responsive.dart';
import 'package:ngoprek_code_blog/views/widgets/app_logo.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kPrimaryColor.withOpacity(0.1),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding * 2,
      ),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(child: AppLogo()),
                      (!Responsive.isMobile(context))
                          ? Row(children: _termsCondition(context))
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: _termsCondition(context),
                            ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _termsCondition(
    BuildContext context,
  ) {
    return [
      Text(
        'Terms of Use',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      const SizedBox(width: kDefaultPadding),
      Text(
        'Privacy Policy',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      const SizedBox(width: kDefaultPadding),
      Text(
        'Cookie Policy',
        style: Theme.of(context).textTheme.bodyLarge,
      )
    ];
  }
}
