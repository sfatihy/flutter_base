import 'package:flutter/material.dart';

import '../product/constants/border_constants.dart';
import '../product/constants/icon_constants.dart';
import '../product/constants/padding_constants.dart';
import '../product/constants/radius_constants.dart';

class CustomTextFormField extends StatefulWidget {

  final TextEditingController textEditingController;
  final String text;
  final bool isPassword;

  const CustomTextFormField(
    {
      required this.textEditingController,
      this.text = "",
      this.isPassword = false,
      super.key
    }
  );

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {

  late bool isObscure;

  @override
  void initState() {
    super.initState();

    isObscure = widget.isPassword ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConstants.hLarge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          widget.text.isEmpty ? const SizedBox() :
          Container(
            decoration: const BoxDecoration(
              color: Colors.white38,
              border: BorderConstants.formTextBorder,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(RadiusConstants.value * 2),
                topRight: Radius.circular(RadiusConstants.value * 2)
              )
            ),
            padding: PaddingConstants.allXSmall,
            child: Text(widget.text)
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.white38,
              border: Border.all(
                color: Colors.white,
                strokeAlign: BorderSide.strokeAlignOutside,
                width: 2
              ),
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(RadiusConstants.value * 2)
              ) +
              const BorderRadius.only(
                topRight: Radius.circular(RadiusConstants.value * 2)
              )
            ),
            padding: PaddingConstants.hMedium,
            child: TextFormField(
              controller: widget.textEditingController,
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: widget.isPassword ?
                  IconButton(
                    icon: const Icon(IconConstants.password),
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                  )
                  : null
              ),
              maxLines: 1,
              obscureText: isObscure,
            ),
          ),
          
        ],
      ),
    );
  }
}