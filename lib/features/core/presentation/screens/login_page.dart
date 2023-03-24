import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../navigation/ht_router.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            HTRouter(context).goToLogin2();
          },
          child: const Text('Login2'),
        ),
      ),
    );
  }
}
