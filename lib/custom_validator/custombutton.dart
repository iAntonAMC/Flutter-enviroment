import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget{
  final String textBoton;
  final Color miColor;
  final VoidCallback onPressed;
  const CustomButton({Key? key, required this.textBoton,
    required this.miColor, required this.onPressed}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
        padding: const EdgeInsets.only(left: 30, right:30),
        child: MaterialButton(
          onPressed: onPressed,
          color: miColor,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(color: miColor, width: 3)
          ),
          child: Text(textBoton),
        )
    );
  }
}