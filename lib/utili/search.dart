import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final elevate = 5.0;
  final String text;

  const Search({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        elevation: elevate,
        backgroundColor: Colors.white,
      ),
    );
  }
}
