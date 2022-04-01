import 'package:cuidapet_supplier_mobile/app/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class CuidapetDefaultButton extends StatelessWidget {
  final double padding;
  final double width;
  final double height;
  final double borderRadius;
  final Color? color;
  final String label;
  final VoidCallback onPressed;

  const CuidapetDefaultButton({
    required this.label,
    required this.onPressed,
    this.padding = 10,
    this.width = double.infinity,
    this.height = 66,
    this.borderRadius = 10,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          primary: color ?? context.primaryColor,
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
