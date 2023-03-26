import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../navigation/ht_router.dart';
import '../bloc/bloc.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var translation = AppLocalizations.of(context);

    return BlocBuilder<CoreBloc, CoreState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).cardColor,
          body: SafeArea(
            child: Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      HTRouter(context).goToLogin2();
                    },
                    child: const Text('Login2'),
                  ),
                  Text(state.settings.language),
                  Text(state.settings.theme),
                  Text(translation.helloFriend('kokonstya')),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<CoreBloc>()
                          .add(UpdateUserSettingsEvent(language: 'en'));
                    },
                    child: const Text('EN'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CoreBloc>().add(
                            UpdateUserSettingsEvent(theme: 'dark'),
                          );
                    },
                    child: const Text('dark'),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<CoreBloc>().add(
                                UpdateUserSettingsEvent(theme: 'light'),
                              );
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: state.settings.theme == 'light'
                                ? Colors.black
                                : Colors.amber,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.read<CoreBloc>().add(
                                UpdateUserSettingsEvent(theme: 'dark'),
                              );
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: state.settings.theme == 'dark'
                                ? Colors.black
                                : Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
