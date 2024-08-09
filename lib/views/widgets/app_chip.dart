import 'package:flutter/material.dart';
import 'package:ngoprek_code_blog/constants.dart';

enum AppChipType { primary, secondary }

extension AppChipTypeExt on AppChipType {
  Color? get backgroundColor {
    switch (this) {
      case AppChipType.primary:
        return null;
      case AppChipType.secondary:
        return kPrimaryColor.withOpacity(0.05);
    }
  }

  Color get labelColor {
    switch (this) {
      case AppChipType.primary:
        return Colors.white;
      case AppChipType.secondary:
        return kPrimaryColor;
    }
  }
}

class AppChip extends StatelessWidget {
  final AppChipType type;
  final String label;
  const AppChip({
    super.key,
    this.type = AppChipType.primary,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: type.backgroundColor,
      label: Text(
        label,
        style: Theme.of(context)
            .textTheme
            .labelLarge
            ?.copyWith(color: type.labelColor),
      ),
    );
  }
}
