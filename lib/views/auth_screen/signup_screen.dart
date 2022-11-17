import 'package:e_mobi/const/const.dart';
import 'package:e_mobi/views/auth_screen/login_screen.dart';
import 'package:e_mobi/widgets/applogo_widgetcommon.dart';
import 'package:e_mobi/widgets/bg_widget.dart';
import 'package:e_mobi/widgets/custom_textfield_widget.dart';
import 'package:e_mobi/widgets/ourbutton_widget.dart';
import 'package:get/get.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
            body: Center(
                child: Column(
      children: [
        (context.screenHeight * 0.1).heightBox,
        appLogoWidget(),
        10.heightBox,
        "Join the $appName".text.fontFamily(bold).white.size(18).make(),
        10.heightBox,
        Column(
          children: [
            customTextField(title: name, hint: hintname),
            customTextField(title: email, hint: emailHint),
            customTextField(title: password, hint: passwordHint),
            customTextField(title: reType, hint: passwordHint),
            Row(
              children: [
                Checkbox(
                  value: isCheck,
                  onChanged: (newValue) {
                    setState(() {
                      isCheck = newValue;
                    });
                  },
                  checkColor: whiteColor,
                  activeColor: redColor,
                ),
                5.widthBox,
                Expanded(
                  //here we have wrapped this widget because at this text should be rearrange it self with its space
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: "I agree to the ",
                        style: TextStyle(fontFamily: regular, color: fontGrey)),
                    TextSpan(
                        text: termCond,
                        style: TextStyle(fontFamily: bold, color: redColor)),
                    TextSpan(
                        text: " & ",
                        style: TextStyle(fontFamily: regular, color: fontGrey)),
                    TextSpan(
                        text: privacypolicy,
                        style: TextStyle(fontFamily: bold, color: redColor))
                  ])),
                )
              ],
            ),
            10.heightBox,
            ourButton(
                    title: singnUp,
                    textColor: whiteColor,
                    color: isCheck == true
                        ? redColor
                        : lightGrey, // providing a condintion where if check box then only go with redcolor
                    onPress: () {})
                .box
                .width(context.screenWidth - 50)
                .make(),
            5.heightBox,
            //wraping into gesture detector of velocity x

            RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: "Already have an account? ",
                  style: TextStyle(fontFamily: regular, color: fontGrey)),
              TextSpan(
                  text: login,
                  style: TextStyle(fontFamily: bold, color: redColor))
            ])).onTap(() {
              Get.back(); // for going back to the page
            }),
          ],
        )
            .box
            .white
            .rounded
            .padding(const EdgeInsets.all(16))
            .width(context.screenWidth - 70)
            .make(),
      ],
    ))));
  }
}
