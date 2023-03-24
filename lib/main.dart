import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';

import './styles/light_theme.dart';
import 'injection_container.dart' as di;
import 'navigation/router.dart';
import 'navigation/router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await di.init();
  await dotenv.load(fileName: ".env");

  runApp(
    const MyApp(
      isLoggedIn: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
    required this.isLoggedIn,
  });

  final bool isLoggedIn;

  static void setLocale(BuildContext context, String newLocale) async {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.changeLanguage(newLocale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('ru', '');

  changeLanguage(String locale) {
    if (locale == 'en') {
      setState(() {
        _locale = const Locale('en', '');
      });
    } else {
      setState(() {
        _locale = const Locale('ru', '');
      });
    }
  }

  final RootRouter _appRouter = RootRouter();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: _locale,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(
        initialRoutes: [
          if (widget.isLoggedIn) const HomeRoute() else const Auth(),
        ],
      ),
    );
  }
}
