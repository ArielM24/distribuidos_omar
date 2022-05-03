import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final TextAlign? textAlign;
  //final int Function(String, int)? otra;
  const HomeButton(
      {Key? key, required this.text, this.onPressed, this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: ElevatedButton(
          onPressed: onPressed,
          child: SizedBox(
              width: 150,
              child: Text(
                text,
                textAlign: textAlign ?? TextAlign.center,
              )),
          style: ElevatedButton.styleFrom(primary: Colors.blue[900]),
        ),
      ),
    );
  }
}
