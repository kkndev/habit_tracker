//

import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig()
class RootRouter extends $RootRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: HomeRoute.page,
      path: '/',
      children: [
        RedirectRoute(path: '', redirectTo: 'habits'),
        AutoRoute(
          path: 'habits',
          page: HabitsTab.page,
          maintainState: true,
          children: [
            AutoRoute(
              path: '',
              page: HabitsListRoute.page,
              title: (ctx, _) => 'Habits list',
            ),
            AutoRoute(
              path: ':id',
              page: HabitDetailsRoute.page,
              title: (ctx, data) {
                return 'Habit Details ${data.pathParams.get('id')}';
              },
            ),
          ],
        ),
        AutoRoute(
          path: 'profile',
          page: ProfileTab.page,
          children: [
            AutoRoute(path: '', page: ProfileRoute.page),
            AutoRoute(path: 'myHabits', page: MyHabitsRoute.page),
          ],
        ),
        AutoRoute(
          path: 'settings',
          page: SettingsTab.page,
        ),
      ],
    ),
    AutoRoute(
      page: AuthWrapperRoute.page,
      path: '/auth',
      children: [
        AutoRoute(path: '', page: LoginRoute.page),
        AutoRoute(path: 'login2', page: Login2Route.page),
      ],
    ),
    AutoRoute(
      page: RootWrapperRoute.page,
      path: '/root',
      children: [
        AutoRoute(path: '', page: MyHabitsRoute.page),
        AutoRoute(path: 'myHabits', page: MyHabitsRoute.page),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ];
}

@RoutePage(name: 'HabitsTab')
class HabitsTabPage extends AutoRouter {
  const HabitsTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}

@RoutePage(name: 'Auth')
class AuthPage extends AutoRouter {
  const AuthPage({super.key});
}
