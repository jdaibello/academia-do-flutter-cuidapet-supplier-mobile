import 'package:flutter/material.dart';

class CuidapetTextFormField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final TextEditingController? controller;
  final IconButton? suffixIcon;
  final FormFieldValidator<String>? validator;
  final ValueNotifier<bool> obscureTextVN;

  CuidapetTextFormField({
    required this.label,
    this.obscureText = false,
    this.controller,
    this.suffixIcon,
    this.validator,
    Key? key,
  })  : obscureTextVN = ValueNotifier<bool>(obscureText),
        assert(
          obscureText ? suffixIcon == null : true,
          'obscureText não pode ser adicionado com o suffixIcon',
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: obscureTextVN,
      builder: (_, obscureTextValue, child) {
        return TextFormField(
          controller: controller,
          obscureText: obscureTextValue,
          validator: validator,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              gapPadding: 0,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              gapPadding: 0,
              borderSide: BorderSide(color: Colors.grey[800]!),
            ),
            suffixIcon: obscureText
                ? IconButton(
                    onPressed: () {
                      obscureTextVN.value = !obscureTextValue;
                    },
                    icon: obscureTextValue
                        ? const Icon(Icons.lock_open)
                        : const Icon(Icons.lock),
                  )
                : suffixIcon,
          ),
        );
      },
    );
  }
}
