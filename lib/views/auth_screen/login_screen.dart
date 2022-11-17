import 'package:e_mobi/const/const.dart';
import 'package:e_mobi/views/auth_screen/signup_screen.dart';
import 'package:e_mobi/views/home_screen/home.dart';
import 'package:e_mobi/widgets/applogo_widgetcommon.dart';
import 'package:e_mobi/widgets/bg_widget.dart';
import 'package:e_mobi/widgets/custom_textfield_widget.dart';
import 'package:e_mobi/widgets/ourbutton_widget.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            "Log in to $appName".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(title: email, hint: emailHint),
                customTextField(title: password, hint: passwordHint),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPassword.text.make())),
                5.heightBox,
                // ourButton().box.width(context.screenWidth - 50).make(),
                ourButton(
                    title: login,
                    textColor: whiteColor,
                    color: redColor,
                    onPress: () {
                      Get.to(() => const Home());
                    }).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(
                    title: singnUp,
                    textColor: redColor,
                    color: lightGolden,
                    onPress: () {
                      Get.to(() => const Signup());
                    }).box.width(context.screenWidth - 50).make(),

                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: lightGrey,
                            child: Image.asset(
                              socialIconList[index],
                              width: 25,
                            ),
                          )),
                    )),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),

            //31.49 min second part https://www.youtube.com/watch?v=KLxNHWd737g&list=PL-7EgTNrNHKYe2PulhORLN13xcfqIP8FK&index=2&ab_channel=BaabaDevs
          ],
        ),
      ),
    ));
  }
}
