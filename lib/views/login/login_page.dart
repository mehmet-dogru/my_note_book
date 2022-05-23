import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_note_book/data/src/colors.dart';
import 'package:my_note_book/data/src/images.dart';
import 'package:my_note_book/data/src/strings.dart';
import 'package:my_note_book/views/login/login_controller.dart';
import 'package:my_note_book/views/register/register_page.dart';

class LoginPage extends GetWidget<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  static const String routeName = '/views/login/login_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(loginAppBarText),
        backgroundColor: mainColor,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildImage(),
            const SizedBox(height: 40),
            _buildUsernameTextField(),
            const SizedBox(height: 10),
            _buildPasswordTextField(),
            const SizedBox(height: 20),
            _buildButton(),
            const SizedBox(height: 20),
            _buildRegisterText(),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Image.asset(
      userImg,
      height: Get.height * .3,
    );
  }

  Widget _buildUsernameTextField() {
    return Material(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      color: Colors.white,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: TextField(
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: usernameText,
          ),
          controller: controller.usernameController,
        ),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return Material(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      color: Colors.white,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: TextField(
          obscureText: true,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: passwordText,
          ),
          controller: controller.passwordController,
        ),
      ),
    );
  }

  Widget _buildButton() {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(loginButton),
      ),
    );
  }

  Widget _buildRegisterText() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          const TextSpan(
              text: registerQuestionText,
              style: TextStyle(color: Colors.black)),
          TextSpan(
            text: registerButtonText,
            style: const TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Get.offNamed(RegisterPage.routeName);
              },
          ),
        ],
      ),
    );
  }
}
