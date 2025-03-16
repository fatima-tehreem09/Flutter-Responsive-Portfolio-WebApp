import 'package:flutter/material.dart';
import 'package:flutter_portfolio/const/colors.dart';
import 'package:flutter_portfolio/extensions/size_extension.dart';
import 'package:flutter_portfolio/widgets/alexendaria_text.dart';

class HoverButton extends StatefulWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const HoverButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor:
              _isHovered ? AppColors.primary : AppColors.secondaryGrey,
        ),
        onPressed: widget.onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (_isHovered) ...[
              Icon(
                widget.icon,
                size: 16,
                color: AppColors.secondaryOrange,
              ),
              4.widthBox,
            ],
            OpenSansText(widget.text),
          ],
        ),
      ),
    );
  }
}
