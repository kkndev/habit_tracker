// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:habit_tracker/features/core/presentation/screens/habit_details_page.dart'
    as _i7;
import 'package:habit_tracker/features/core/presentation/screens/habit_list_page.dart'
    as _i8;
import 'package:habit_tracker/features/core/presentation/screens/home_page.dart'
    as _i1;
import 'package:habit_tracker/features/core/presentation/screens/login2_page.dart'
    as _i10;
import 'package:habit_tracker/features/core/presentation/screens/login_page.dart'
    as _i2;
import 'package:habit_tracker/features/core/presentation/screens/my_habits_page.dart'
    as _i9;
import 'package:habit_tracker/features/core/presentation/screens/profile_page.dart'
    as _i5;
import 'package:habit_tracker/features/core/presentation/screens/root_wrapper_screen.dart'
    as _i11;
import 'package:habit_tracker/features/core/presentation/screens/settings_page.dart'
    as _i3;
import 'package:habit_tracker/features/core/presentation/screens/welcome_screen.dart'
    as _i6;
import 'package:habit_tracker/navigation/router.dart' as _i4;

abstract class $RootRouter extends _i12.RootStackRouter {
  $RootRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<String>(
        routeData: routeData,
        child: _i12.WrappedRoute(child: const _i1.HomePage()),
      );
    },
    LoginRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    SettingsTab.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SettingsPage(),
      );
    },
    HabitsTab.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HabitsTabPage(),
      );
    },
    ProfileTab.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ProfileTabPage(),
      );
    },
    Auth.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AuthPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ProfilePage(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.WelcomeScreen(),
      );
    },
    HabitDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<HabitDetailsRouteArgs>(
          orElse: () => HabitDetailsRouteArgs(
                  id: pathParams.getInt(
                'id',
                -1,
              )));
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.HabitDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    HabitsListRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.HabitsListScreen(),
      );
    },
    MyHabitsRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.MyHabitsPage(),
      );
    },
    Login2Route.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.Login2Page(),
      );
    },
    RootWrapperRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.WrappedRoute(child: const _i11.RootWrapperScreen()),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute({List<_i12.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SettingsPage]
class SettingsTab extends _i12.PageRouteInfo<void> {
  const SettingsTab({List<_i12.PageRouteInfo>? children})
      : super(
          SettingsTab.name,
          initialChildren: children,
        );

  static const String name = 'SettingsTab';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HabitsTabPage]
class HabitsTab extends _i12.PageRouteInfo<void> {
  const HabitsTab({List<_i12.PageRouteInfo>? children})
      : super(
          HabitsTab.name,
          initialChildren: children,
        );

  static const String name = 'HabitsTab';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ProfileTabPage]
class ProfileTab extends _i12.PageRouteInfo<void> {
  const ProfileTab({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTab';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AuthPage]
class Auth extends _i12.PageRouteInfo<void> {
  const Auth({List<_i12.PageRouteInfo>? children})
      : super(
          Auth.name,
          initialChildren: children,
        );

  static const String name = 'Auth';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ProfilePage]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.WelcomeScreen]
class WelcomeRoute extends _i12.PageRouteInfo<void> {
  const WelcomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HabitDetailsPage]
class HabitDetailsRoute extends _i12.PageRouteInfo<HabitDetailsRouteArgs> {
  HabitDetailsRoute({
    _i13.Key? key,
    int id = -1,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          HabitDetailsRoute.name,
          args: HabitDetailsRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'HabitDetailsRoute';

  static const _i12.PageInfo<HabitDetailsRouteArgs> page =
      _i12.PageInfo<HabitDetailsRouteArgs>(name);
}

class HabitDetailsRouteArgs {
  const HabitDetailsRouteArgs({
    this.key,
    this.id = -1,
  });

  final _i13.Key? key;

  final int id;

  @override
  String toString() {
    return 'HabitDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i8.HabitsListScreen]
class HabitsListRoute extends _i12.PageRouteInfo<void> {
  const HabitsListRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HabitsListRoute.name,
          initialChildren: children,
        );

  static const String name = 'HabitsListRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MyHabitsPage]
class MyHabitsRoute extends _i12.PageRouteInfo<void> {
  const MyHabitsRoute({List<_i12.PageRouteInfo>? children})
      : super(
          MyHabitsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyHabitsRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.Login2Page]
class Login2Route extends _i12.PageRouteInfo<void> {
  const Login2Route({List<_i12.PageRouteInfo>? children})
      : super(
          Login2Route.name,
          initialChildren: children,
        );

  static const String name = 'Login2Route';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.RootWrapperScreen]
class RootWrapperRoute extends _i12.PageRouteInfo<void> {
  const RootWrapperRoute({List<_i12.PageRouteInfo>? children})
      : super(
          RootWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootWrapperRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
