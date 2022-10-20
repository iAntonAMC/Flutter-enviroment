import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String textHint;
  final Icon icono;
  final FormFieldValidator<String> validator;

  const CustomTextField({Key? key, required this.textHint, required this.icono, required this.validator,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: TextFormField(
        validator: validator,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20
          ),
          hintText: textHint,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.teal, width: 3)
          )
        ),
      ),
    );
  }
}
