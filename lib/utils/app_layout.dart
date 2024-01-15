import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }

  static getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
  static getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
  static getHeight(BuildContext context, double pixels) {
    // print("screen height: ${getScreenHeight(context).toString()}");
    double x = getScreenHeight(context)/pixels;
    return getScreenHeight(context)/x;
  }
  static getWidth(BuildContext context, double pixels) {
    double x = getScreenWidth(context)/pixels;
    return getScreenWidth(context)/x;
  }

}