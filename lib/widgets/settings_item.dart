import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {

  final Color color;
  final Color textColor;
  final String title;
  final Widget rightWidget;
  final VoidCallback callback;

  ItemCard({Key? key, required this.title, required this.color, required this.rightWidget, required this.callback, this.textColor = Colors.indigo}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      child: Container(
        height: 60,
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 24),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: textColor,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 24),
              child: rightWidget,
            )
          ],
        ),
      ),
      onTap: callback,
    );
  }
}