import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:docdoc/src/config/themes/app_colors.dart';
import 'package:docdoc/src/config/themes/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.prefix,
    this.suffix,
    this.obscureText = false,
    this.label,
    this.hintText,
    this.onSubmit,
    this.borderRadius,
    this.onSaved,
    this.autofillHints,
    this.enabled = true,
    this.textAlign = TextAlign.start,
    this.maxLength,
    this.onChanged,
    this.contentPadding,
    this.onTap,
    this.focusNode,
    this.onEditingComplete,
    this.textCapitalization = TextCapitalization.none,
    this.validating,
    this.enabledBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.errorBorder,
    this.border,
    this.fillColor,
    this.hintStyle,
    this.autofocus = false,
    this.disabledBorder,
    this.maxLines = 1,
    this.enableSuggestions = true,
    this.filled = true,
  });

  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Widget? prefix;
  final Widget? suffix;
  final bool obscureText;
  final bool? enabled;
  final String? label;
  final List<String>? autofillHints;
  final TextCapitalization textCapitalization;
  final Function(String submittedText)? onSubmit;
  final Function(String? value)? onSaved;
  final void Function()? onTap;
  final String? hintText;
  final TextAlign textAlign;
  final double? borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLength;
  final Function(String)? onChanged;
  final FocusNode? focusNode;
  final void Function()? onEditingComplete;
  final String? Function(String?)? validating;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? errorBorder;
  final InputBorder? disabledBorder;
  final InputBorder? border;
  final Color? fillColor;
  final TextStyle? hintStyle;
  final bool autofocus;
  final int? maxLines;
  final bool enableSuggestions;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      enabled: enabled,
      autofocus: autofocus,
      enableSuggestions: enableSuggestions,
      textCapitalization: textCapitalization,
      textAlign: textAlign,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLength: maxLength,
      onSaved: onSaved,
      onTap: onTap,
      autofillHints: autofillHints,
      onFieldSubmitted: onSubmit,
      onChanged: onChanged,
      style: _customTextFieldTextStyle(),
      maxLines: maxLines,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        filled: filled,
        fillColor: AppColors.textFormFieldFillColor,
        errorStyle: TextStyle(fontSize: 13.sp, color: Colors.red),
        hintText: hintText,
        hintStyle: hintStyle ??
            _customTextFieldTextStyle().copyWith(color: AppColors.hintColor),
        errorMaxLines: null,
        prefixIcon: prefix,
        suffixIcon: suffix,
        labelText: label,
        labelStyle: Theme.of(context).textTheme.titleSmall,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 17.h,
            ),
        enabledBorder: enabledBorder ?? _buildUnderlineInputBorder(),
        focusedBorder: focusedBorder ??
            _buildUnderlineInputBorder(
              borderColor: AppColors.primaryColor,
              width: 2,
            ),
        errorBorder: errorBorder ??
            _buildUnderlineInputBorder(
              borderColor: Colors.red,
              width: 1.3,
            ),
        focusedErrorBorder: focusedErrorBorder ??
            _buildUnderlineInputBorder(
              borderColor: Colors.red,
              width: 1.3,
            ),
        border: border ?? _buildUnderlineInputBorder(),
        disabledBorder: disabledBorder,
      ),
      validator: validating,
      onEditingComplete: onEditingComplete,
    );
  }

  TextStyle _customTextFieldTextStyle() {
    return AppTextStyles.font14Regular;
  }

  OutlineInputBorder _buildUnderlineInputBorder({
    Color? borderColor,
    double width = 1,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.r),
      borderSide: BorderSide(
        color: borderColor ?? AppColors.lightGrey,
        width: width.w,
      ),
    );
  }
}
