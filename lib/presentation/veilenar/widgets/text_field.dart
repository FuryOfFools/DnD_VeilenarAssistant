import 'package:flutter/material.dart';

class VeilenarTextField extends StatefulWidget {
  final double width;
  final bool isEnabled;

  const VeilenarTextField(
      {Key? key, required this.width, this.isEnabled = true})
      : super(key: key);
  @override
  State<VeilenarTextField> createState() => _VeilenarTextFieldState();
}

class _VeilenarTextFieldState extends State<VeilenarTextField> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: widget.width,
      padding: EdgeInsets.only(left: 2, right: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1.5,
          color: Colors.blueGrey,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Align(
        alignment: Alignment.center,
        child: TextField(
          enabled: widget.isEnabled,
          textAlign: TextAlign.center,
          controller: controller,
          minLines: 1,
          maxLines: 2,
          keyboardType: TextInputType.streetAddress,
          decoration: InputDecoration(
            // * Отступы
            isDense: true,
            contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
