import 'package:flutter/material.dart';
import 'package:heyo_chat/auth/login_page.dart';
import 'package:heyo_chat/auth/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) => isLogin
      ? LoginPage(
          onClickedSigUp: toggle,
        )
      : RegisterPage(
          onClickedSigIn: toggle,
        );

  void toggle() => setState(() => isLogin = !isLogin);
}
