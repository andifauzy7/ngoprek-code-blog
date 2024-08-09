import 'package:flutter/material.dart';
import 'package:ngoprek_code_blog/constants.dart';

class HeaderMenuItem extends StatefulWidget {
  const HeaderMenuItem({
    super.key,
    required this.isActive,
    required this.text,
    required this.onTap,
  });

  final bool isActive;
  final String text;
  final VoidCallback onTap;

  @override
  State<HeaderMenuItem> createState() => _HeaderMenuItemState();
}

class _HeaderMenuItemState extends State<HeaderMenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return kPrimaryColor;
    } else if (!widget.isActive & _isHover) {
      return kPrimaryColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: _borderColor(),
              width: 3,
            ),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            fontWeight: widget.isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
