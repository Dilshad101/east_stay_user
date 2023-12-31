import 'package:east_stay/resources/constants/colors.dart';
import 'package:east_stay/resources/constants/text_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.icon,
    required this.hint,
    this.isReadOnly = false,
    this.padding = 20,
    this.onTap,
    this.controller,
  });
  final IconData? icon;
  final String hint;
  final bool isReadOnly;
  final double padding;
  final TextEditingController? controller;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: padding),
      
      child: TextFormField(
        readOnly: isReadOnly,
        controller: controller,
        style: AppText.smallDark,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
          hintText: hint,
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColor.grey,
          ),
          
          isDense: true,
          suffixIcon: icon == null
              ? null
              : Icon(
                  icon,
                  size: 25,
                  color: AppColor.textSecondary,
                ),
        ),
        onTap: onTap,
      ),
    );
  }
}
