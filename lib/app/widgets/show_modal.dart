import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowModal {
  static show(context, {required Widget clild, bool maxHeight = false}) async {
    final height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final width = MediaQuery.of(context).size.width;
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5.0),
          topRight: Radius.circular(5.0),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          color: Colors.transparent,
          height: height * 0.95, //maxHeight ? height * 0.95 : height * 0.65,
          child: Column(
            children: [
              Container(
                height: width * 0.035,
                width: width,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(5.0),
                  ),
                ),
                child: Center(
                  child: Container(
                    width: width * 0.08,
                    height: width * 0.01,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: clild,
              ),
            ],
          ),
        );
      },
    );
  }
}
