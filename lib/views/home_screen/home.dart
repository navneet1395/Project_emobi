import 'package:e_mobi/const/const.dart';
import 'package:e_mobi/controllers/home_controller.dart';
import 'package:e_mobi/views/account_screen/account_screen.dart';
import 'package:e_mobi/views/cart_screen/cart_screen.dart';
import 'package:e_mobi/views/categories_screen/categories_screen.dart';
import 'package:e_mobi/views/home_screen/home_screen.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
// we will use controllers for managing the state of the statless widget
  @override
  Widget build(BuildContext context) {
//init Home controller
    var controller = Get.put(HomeControllers());

    //creating an list which contains the item of the  navbar
    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icCateg, width: 26), label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icAccount, width: 26), label: account),
    ];
    //hum har nav ko body ke hissab se show karwana hai to hum
    var navBody = [
      const HomeScreen(),
      const cartScreen(),
      const categoriesScreen(),
      const AcccountScreen(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
                child: navBody.elementAt(controller.currentNavIndex.value)),
          )
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          items: navbarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
