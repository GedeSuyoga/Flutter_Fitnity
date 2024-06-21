import 'package:flutter/material.dart';

class ProfileBox extends StatelessWidget {
  final String text;
  final String sectionName;
  final void Function()? onPressed;
  const ProfileBox({
    super.key,
    required this.text,
    required this.sectionName,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 54, 75, 113),
          borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.only(left: 15, bottom: 15),
      margin: EdgeInsets.only(left: 15, right: 20, top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              sectionName,
              style: TextStyle(
                color: const Color.fromARGB(255, 166, 166, 166),
                fontSize: 12,
                fontWeight: FontWeight.normal,
                fontFamily: 'Inter',
              ),
            ),
            IconButton(
                onPressed: onPressed,
                icon:
                    Icon(Icons.edit, color: Color.fromARGB(255, 166, 166, 166)))
          ]),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontFamily: 'Inter',
            ),
          ),
        ],
      ),
    );
  }
}
