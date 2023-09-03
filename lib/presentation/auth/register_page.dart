import 'package:flutter/material.dart';
import 'package:vape_store/common/global_data.dart';
import 'package:vape_store/presentation/auth/login_page.dart';
import 'package:vape_store/presentation/auth/widgets/action_button.dart';
import 'package:vape_store/presentation/auth/widgets/auth_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController fullnameC = TextEditingController();
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          right: 25,
          left: 25,
          bottom: 36,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create an account',
              style: poppinsBlack.copyWith(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Let’s create your account',
              style: poppinsBlack.copyWith(
                fontSize: 16,
                color: colorBlack.withOpacity(0.4),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            AuthTextField(
              nameText: 'Full name',
              hintText: 'Enter your full name',
              isObsecure: false,
              isPassword: false,
              controller: fullnameC,
            ),
            AuthTextField(
              nameText: 'Email',
              hintText: 'Enter your email address',
              isObsecure: false,
              isPassword: false,
              controller: emailC,
            ),
            AuthTextField(
              nameText: 'Password',
              hintText: 'Enter your password',
              isObsecure: true,
              isPassword: true,
              controller: passwordC,
            ),
            ActionButton(
              callback: () {},
              color: colorBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign Up',
                    style: poppinsWhite.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(children: <Widget>[
              const Expanded(
                  child: Padding(
                padding: EdgeInsets.only(right: 8),
                child: Divider(),
              )),
              Text(
                "Or",
                style: poppinsBlack,
              ),
              const Expanded(
                  child: Padding(
                padding: EdgeInsets.only(left: 8),
                child: Divider(),
              )),
            ]),
            const SizedBox(
              height: 20,
            ),
            ActionButton(
              callback: () {},
              color: colorWhite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.g_translate_sharp),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Sign Up with Facebook',
                    style: poppinsBlack.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ActionButton(
              callback: () {},
              color: const Color(0xff1877F2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook,
                    color: colorWhite,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Sign Up with Facebook',
                    style: poppinsWhite.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already a member?',
                  style: poppinsBlack.copyWith(
                    color: colorBlack.withOpacity(0.4),
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Log In',
                    style: poppinsBlack.copyWith(
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
