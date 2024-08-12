import 'package:flutter/material.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:ngoprek_code_blog/responsive.dart';
import 'package:ngoprek_code_blog/views/widgets/app_logo.dart';

class HeaderContact extends StatelessWidget {
  const HeaderContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          !Responsive.isMobile(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _renderContent(context),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _renderContent(context),
                ),
          const SizedBox(height: kDefaultPadding * 0.5),
          Text(
            '''
Meet Andi Fauzy, a passionate engineer and writer with a love for technology and sharing. Andi holds a degree in Software Engineer and has spent years working in the tech industry, gaining a deep understanding of the impact technology has on our lives.
''',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }

  List<Widget> _renderContent(BuildContext context) {
    return [
      const CircleAvatar(
        radius: 48,
        backgroundImage: NetworkImage(
            'https://media.licdn.com/dms/image/C5603AQGhpfJbKBo7GQ/profile-displayphoto-shrink_200_200/0/1632454285381?e=2147483647&v=beta&t=Q3YoZZmwRLsqYoqsSWx8fJ43hpn25OfB9FlCirbd7z0'),
      ),
      const SizedBox(
        width: kDefaultPadding,
        height: kDefaultPadding,
      ),
      Column(
        crossAxisAlignment: !Responsive.isMobile(context)
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          Text(
            'Andi Fauzy Dewantara',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            'Mobile Developer | Content Creator at',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const AppLogo(),
        ],
      )
    ];
  }
}
