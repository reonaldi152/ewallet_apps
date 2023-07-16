// import 'package:adakita/config/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldOutline extends StatelessWidget {
  const TextFormFieldOutline({
    Key? key,
    this.title,
    this.filled,
    this.obsecureText,
    this.onFieldSubmitted,
    this.suffix,
    this.validator,
    this.textStyle,
    this.keyboardType,
    this.hintText,
    this.initialValue,
    this.controller,
    this.maxLength,
    this.onChange,
    this.onTap,
    this.enabled,
    this.textCapitalization,
    this.textInputAction,
    this.focusNode,
    this.autofocus,
    this.labelText,
    this.titleStyle,
    this.maxLines,
    this.suffixIcon,
    this.subTitle,
    this.readOnly,
    this.preffix,
    this.prefixIconConstraints,
    this.prefixIcon,
    this.prefixIconColor,
    this.textAlign,
    this.hintStyle,
    this.minLines,
    this.inputFormatters,
    this.focusedBorder,
    this.errorBorder,
    this.fillColor,
  }) : super(key: key);

  final bool? obsecureText;

  final String? title;

  final ValueChanged<String>? onFieldSubmitted;

  final int? maxLines;

  final String? initialValue;

  final String? labelText;

  final String? hintText;

  final TextInputType? keyboardType;

  final FormFieldValidator<String>? validator;

  final TextEditingController? controller;

  final int? maxLength;

  final ValueChanged? onChange;

  final GestureTapCallback? onTap;

  final bool? enabled;

  final bool? autofocus;

  final TextCapitalization? textCapitalization;

  final TextInputAction? textInputAction;

  final FocusNode? focusNode;
  final TextStyle? titleStyle;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final Widget? suffix;
  final Widget? suffixIcon;
  final Widget? preffix;
  final Widget? subTitle;
  final bool? readOnly;
  final bool? filled;
  final BoxConstraints? prefixIconConstraints;
  final Widget? prefixIcon;
  final Color? prefixIconColor;
  final Color? fillColor;
  final TextAlign? textAlign;
  final int? minLines;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Text(
            title ?? ' ',
            style: titleStyle ??
                const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
          ),
        ),
        subTitle ?? Container(),
        Container(
          margin: const EdgeInsets.only(top: 12.0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: obsecureText == null ? false : true,
            style: textStyle,
            maxLines: maxLines,
            minLines: minLines,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              filled: filled,
              fillColor: fillColor,
              errorBorder: errorBorder,
              focusedBorder: focusedBorder,
              contentPadding: prefixIcon != null
                  ? EdgeInsets.zero
                  : const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              suffix: suffix,
              hintText: hintText ?? '',
              hintStyle: hintStyle,
              labelText: labelText ?? '',
              suffixIcon: suffixIcon,
              prefix: preffix,
              prefixIcon: prefixIcon,
              prefixIconConstraints: prefixIconConstraints,
              prefixIconColor: prefixIconColor,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
            ),
            validator: validator,
            textInputAction: textInputAction,
            keyboardType: keyboardType,
            controller: controller,
            initialValue: initialValue,
            maxLength: maxLength,
            textCapitalization:
                textCapitalization ?? TextCapitalization.sentences,
            onFieldSubmitted: onFieldSubmitted,
            onChanged: onChange,
            onTap: onTap,
            readOnly: readOnly ?? false,
            enabled: enabled ?? true,
            focusNode: focusNode,
            autofocus: autofocus ?? true,
            textAlign: textAlign ?? TextAlign.start,
          ),
        ),
      ],
    );
  }
}
