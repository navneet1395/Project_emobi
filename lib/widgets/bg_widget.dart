import 'package:e_mobi/const/const.dart';

// include: 'package:flutter_lints/flutter.yaml';
Widget bgWidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
        image:
            DecorationImage(image: AssetImage(icBackground), fit: BoxFit.fill)),
    child: child,
  );
}
