enum Menu { home, about, contact }

extension MenuExt on Menu {
  String get label {
    switch (this) {
      case Menu.home:
        return 'Home';
      case Menu.about:
        return 'About';
      case Menu.contact:
        return 'Contact';
    }
  }
}
