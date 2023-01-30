import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final IconData leading;
  final String title;
  final String subTitle;
  final String trailing;
  final Color iconColor;

  const MyButton({
    Key? key,
    required this.leading,
    required this.title,
    required this.subTitle,
    required this.trailing,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 15,
      ),
      child: ListTile(
        leading: Icon(
          leading,
          size: 50,
          color: iconColor,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subTitle),
        trailing: Text(
          trailing,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
