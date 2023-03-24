import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../navigation/ht_router.dart';

@RoutePage()
class Login2Page extends StatelessWidget {
  const Login2Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            HTRouter(context).goToHome();
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}
