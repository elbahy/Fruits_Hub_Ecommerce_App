import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.obscureText = false});

  final String hintText;
  final bool obscureText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          style: AppStyles.semiBold18.copyWith(color: AppColors.blackColor),
          obscureText: widget.obscureText ? isVisible : false,
          decoration: InputDecoration(
              fillColor: Colors.grey[100],
              filled: true,
              hintText: widget.hintText,
              hintStyle: AppStyles.bold16.copyWith(color: Colors.grey),
              contentPadding: const EdgeInsets.all(20),
              enabledBorder: outlineBorder(.5),
              focusedBorder: outlineBorder(1),
              suffix: widget.obscureText
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child: isVisible == false
                          ? const Icon(Icons.remove_red_eye)
                          : const Icon(Icons.visibility_off),
                    )
                  : null),
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  OutlineInputBorder outlineBorder(double borderWidth) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: Colors.grey, width: borderWidth),
    );
  }
}
