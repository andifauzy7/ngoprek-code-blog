import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF4B6BFB);
const kDarkBlackColor = Color(0xFF191919);
const kBgColor = Color(0xFFE7E7E7);
const kBodyTextColor = Color(0xFF666666);
final kDividerColor = Colors.grey.withOpacity(0.1);

const kDefaultPadding = 20.0;
const kMaxWidth = 1232.0;
const kDefaultDuration = Duration(milliseconds: 200);

final dummyPost = [
  {
    "image":
        "https://www.infoworld.com/wp-content/uploads/2024/08/3484345-0-03027800-1723073044-shutterstock_1927160003.jpg?resize=1024%2C583&quality=50&strip=all",
    "title": "Google unveils Flutter GPU API, Dart updates",
    "description":
        "Flutter GPU is a low-level graphics API integrated into the Flutter SDK. It allows developers to define custom raster pipelines and submit draw calls directly to the GPU, making it possible to develop specialized renderers such as 2D Canvas alternatives, 3D scene graphs, or particle systems for performant and immersive experiences without the engine-level bulk typically needed, Google said. Google noted that graphics programming has a steep learning curve, and that most users likely will choose to use a higher-level rendering package rather than build there own. As a result, Google is investing in rendering packages such as Flutter Scene, which leverages the Flutter GPU API and allows importing of animated glTF models and constructing 3D scenes, enabling developers to easily build 3D apps and games in Flutter and Dart. While the Flutter GPU API is in preview, Google recommends developing against Flutter’s main channel when using Flutter GPU."
  },
  {
    "image":
        "https://imgsrv2.voi.id/-Ao70NRp13o2OwSvXLD_gFrCj4wmk57nPtwDhqQ0qhA/auto/1200/675/sm/1/bG9jYWw6Ly8vcHVibGlzaGVycy8yNDc5NzQvMjAyMzAxMjYxMTQwLW1haW4ud2VicA.jpg",
    "title":
        "Google rolls out Flutter 3.24 with upgraded graphics performance and easier Apple deployment",
    "description":
        "Impeller is a rendering engine built into Flutter that precompiles shaders, a type of program that controls how pixels are displayed on the screen that define how 3D objects are displayed. Shaders alter an objects color, lighting and texture to create a realistic and immersive effect based on shadows, distance and where the object is with respect to the viewer."
  },
  {
    "image":
        "https://devclass.com/wp-content/uploads/2023/09/shutterstock_626435660.jpg",
    "title":
        "At Google I/O, Flutter and Dart updates overshadowed by official support for Kotlin Multiplatform",
    "description":
        "Among Google’s news at its I/O 2024 event this week was the release of Flutter 3.22 and Dart 3.4, both significant updates, but the cloud giant also introduced official support for Kotlin Multiplatform, in a possible shift of focus towards Kotlin-based cross-platform solutions."
  },
  {
    "image":
        "https://a.storyblok.com/f/179392/1379x874/f62b4d1c25/flutter-2.png",
    "title":
        "Ordina adopts Flutter as a serious alternative to native development",
    "description":
        "The relatively young mobile framework Flutter, which is based on the Dart programming language, is rapidly gaining prominence in the world of mobile app development. In the Netherlands, Ordina applies the open-source solution developed by Google in various projects, including those in the financial services sector. Additionally, several other major companies have enthusiastically adopted Flutter's capabilities, particularly for mobile app development. This includes industry leaders such as Ahold, BMW, Philips, iRobot, eBay, and Toyota."
  },
  {
    "image":
        "https://www.techzine.eu/wp-content/uploads/2024/08/google-flutter-1-768x461.jpg",
    "title":
        "Google Flutter 3.24 improves tools for 3D development and Apple apps",
    "description":
        "Flutter gets the improvement in graphics performance from the API Flutter GPU, which is now available in preview. Complex graphics and 3D scenes can thus be brought directly into Flutter SDK. Graphic designers must only do that once to bring the designs to different platforms and devices. This gives developers the chance to build complex designs without worrying whether the design can be copied exactly on another platform."
  }
];
