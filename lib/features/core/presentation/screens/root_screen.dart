import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../navigation/router.dart';
import '../../../../navigation/router.gr.dart';
import '../../../../styles/styles.dart';
import '../bloc/bloc.dart';

final RootRouter _appRouter = RootRouter();

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  void initState() {
    context.read<CoreBloc>().add(LoadUserSettingsEvent());
    super.initState();
  }

  Locale getLanguage(String language) {
    if (language == 'en') {
      return const Locale('en', '');
    } else if (language == 'ru') {
      return const Locale('ru', '');
    }
    return const Locale('ru', '');
  }

  ThemeData getTheme(String theme) {
    if (theme == 'light') {
      return lightTheme;
    } else if (theme == 'dark') {
      return darkTheme;
    }
    return lightTheme;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CoreBloc, CoreState>(
      listener: (context, state) {},
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: getTheme(state.settings.theme),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: getLanguage(state.settings.language),
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(
            initialRoutes: [
              if (false) const HomeRoute() else const AuthWrapperRoute(),
            ],
          ),
        );
      },
    );
  }
}
