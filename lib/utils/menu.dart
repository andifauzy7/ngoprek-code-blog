enum Menu { home, about, creator }

extension MenuExt on Menu {
  String get label {
    switch (this) {
      case Menu.home:
        return 'Home';
      case Menu.about:
        return 'About';
      case Menu.creator:
        return 'Creator';
    }
  }
}
