import 'package:flutter/material.dart';

class circularIconButton extends StatelessWidget {
  const circularIconButton({
    super.key, required this.circleColor, required this.circleSize, required this.icon_name, required this.icon_color, required this.icon_size, required this.onTap,
  });

  final Color circleColor;
  final double circleSize;
  final IconData  icon_name;
  final Color icon_color;
  final double icon_size;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: CircleAvatar(
        radius: circleSize,
        backgroundColor: circleColor.withOpacity(0.3),
        child: Icon(icon_name,color: icon_color.withOpacity(0.4),size: icon_size,),
      ),
    );
  }
}