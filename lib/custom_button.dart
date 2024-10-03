import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, this.txt});
 final void Function()? onPressed;
 final txt ;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(8),
        backgroundColor: Colors.orange,
        minimumSize: const Size(150, 50),
      ),
      onPressed: onPressed,
      child:  Text(
        txt,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }
}
