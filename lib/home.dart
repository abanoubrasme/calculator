import 'package:calculator/appColor.dart';
import 'package:calculator/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'button.dart';



class Calc extends StatelessWidget {
   Calc({super.key});
  Controller controller =Get.put(Controller());

  @override
  Widget build(BuildContext context) {

    var md = MediaQuery.of(context).size.width;

    return SafeArea(
      child: GetBuilder<Controller>(
        builder: (controller){
          return Scaffold(
            body: Container(
              color: Colors.black87,
              child: Padding(
                padding:
                const EdgeInsets.only(top: 40, bottom: 12, right: 12, left: 12),
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Stack(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      style: BorderStyle.solid,
                                      width: 2,
                                      color: Colors.grey.shade900),
                                  color: Colors.grey.shade900)),
                          Align(
                              alignment: const FractionalOffset(0.04, 0.04),
                              child: SizedBox(
                                  width: md,
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      reverse: true,
                                      padding:
                                      const EdgeInsets.only(left: 5, top: 5, right: 10),
                                      child: Text(
                                        controller.input,
                                        style: const TextStyle(fontSize: 65, color: Colors.white),
                                      ))
                              )
                          ),
                          Align(
                            alignment: const FractionalOffset(0, .95),
                            child: Container(
                              width: md,
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  reverse: true,
                                  padding: const EdgeInsets.only(right: 13, left: 10),
                                  child: Text(
                                    controller.count,
                                    style: const TextStyle(fontSize: 65, color: Colors.white),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Expanded(
                      flex: 4,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(child: Button(textButton:"C", color: AppColor.red!,)),
                                Expanded(child: Button(textButton: "1",color: AppColor.indigo!)),
                                Expanded(child: Button(textButton:"4",color: AppColor.indigo!)),
                                Expanded(child: Button(textButton:"7",color: AppColor.indigo!)),
                                Expanded(child: Button(textButton:"0",color: AppColor.indigo!)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(child: Button(textButton:"÷",color: AppColor.indigo!)),
                                Expanded(child: Button(textButton:"2",color: AppColor.indigo!)),
                                Expanded(child: Button(textButton:"5",color: AppColor.indigo!)),
                                Expanded(child: Button(textButton:"8",color: AppColor.indigo!)),
                                Expanded(child: Button(textButton:".",color: AppColor.indigo!)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(child: Button(textButton:"×",color: AppColor.indigo!)),
                                Expanded(child: Button(textButton:"3",color: AppColor.indigo!)),
                                Expanded(child: Button(textButton:"6",color: AppColor.indigo!)),
                                Expanded(child: Button(textButton:"9",color: AppColor.indigo!)),
                                Expanded(child: Button(textButton:"ans",color: AppColor.indigo!)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(child: Button(textButton:"Del",color: AppColor.indigo!)),
                                Expanded(child: Button(textButton:"-",color: AppColor.indigo!)),
                                Expanded(child: Button(textButton:"+",color: AppColor.indigo!)),
                                Expanded(flex: 2,
                                    child: Button(textButton:"=",color: AppColor.blue!)),

                              ],
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      )
    );
  }
}




