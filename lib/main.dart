import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_note_book/views/login/login_page.dart';

import 'data/get_controllers.dart';
import 'data/routing/get_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future<void> main() async {
    await getControllers();
  }

  @override
  Widget build(BuildContext context) {
    main();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: getPages,
      home: const LoginPage(),
    );
  }
}
