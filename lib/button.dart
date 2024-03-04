import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'appColor.dart';
import 'controller.dart';

class Button extends StatelessWidget {

   Button( {super.key,required this.textButton, required this.color});

   final String textButton;
   final Color color;
  Controller controller =Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
            style: BorderStyle.solid, width: .5, color: AppColor.black!),
      ),
      child: TextButton(
          onPressed: () {
            controller.pressedButton(textButton);
          },
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
          child: Text(textButton, style: TextStyle(color: AppColor.grey2, fontSize: controller.fontSize),
          )),
    );
  }
}
