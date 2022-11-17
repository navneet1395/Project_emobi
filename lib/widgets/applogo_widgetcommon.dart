import 'package:e_mobi/const/const.dart';

Widget appLogoWidget() {
  //using velocity x
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}
