import 'package:flutter/material.dart';

class DividerText extends StatelessWidget {
  const DividerText({Key? key, required this.textTitle}) : super(key: key);
  final String textTitle;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(bottom: width * 0.025, top: width * 0.025),
      child: Container(
        child: Stack(
          children: [
            SizedBox(
              height: width * 0.065,
              child: Center(
                child: Container(
                  height: 3,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            Center(
              child: Container(
                constraints: BoxConstraints(minWidth: width * 0.45, maxHeight: width * 0.65),
                width: width * 0.65,
                height: width * 0.065,
                color: Colors.grey.shade300,
                child: Center(
                  child: Text(
                    textTitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
