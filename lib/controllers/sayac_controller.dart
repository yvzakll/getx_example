import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SayacController extends GetxController {
  var _sayac = 0.obs;

  int sayacDegeriniVer() {
    return _sayac.value;

    ///get metodunun yaptığını yapar
  }

  void yeniSayacDegeriAta(yeniDeger) {
    _sayac.value = yeniDeger; ////set metodunun yaptığıunı yapar
  }

  get sayac => _sayac.value;

  set sayac(yeniDeger) => _sayac.value = yeniDeger;

  void arttir() {
    sayac = sayac + 1;
    Get.snackbar("ARTTIRILDI", "SAYAÇ 1 ARTTI");
  }

  void azalt() {
    sayac = sayac - 1;
    Get.showSnackbar(const GetSnackBar(
      title: "DEFAULT SNACKBAR",
      message: "Deneme",
      backgroundColor: Colors.yellow,
      duration: Duration(seconds: 1),
      isDismissible: true,
    ));
  }
}
