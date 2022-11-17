import 'package:e_mobi/const/const.dart';

Widget HomeButton({String? title, width, height, imageName}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(imageName, width: 26),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ], 
  ).box.rounded.white.shadowSm.size(width, height).make();
}
