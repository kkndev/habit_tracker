import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../../../../navigation/router.gr.dart';
import '../bloc/bloc.dart';

@RoutePage<String>()
class HomePage extends StatefulWidget implements AutoRouteWrapper {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  HomePageState createState() => HomePageState();

  @override
  Widget wrappedRoute(context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: sl<CoreBloc>(),
          child: this,
        ),
      ],
      child: this,
    );
  }
}

class RouteDestination {
  final PageRouteInfo route;
  final IconData icon;
  final String label;

  const RouteDestination({
    required this.route,
    required this.icon,
    required this.label,
  });
}

const destinations = [
  RouteDestination(
    route: HabitsTab(),
    icon: Icons.source,
    label: 'Books',
  ),
  RouteDestination(
    route: ProfileTab(),
    icon: Icons.person,
    label: 'Profile',
  ),
  RouteDestination(
    route: SettingsTab(),
    icon: Icons.settings,
    label: 'Settings',
  ),
];

class HomePageState extends State<HomePage> {
  @override
  Widget build(context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        HabitsTab(),
        ProfileTab(),
        SettingsTab(),
      ],
      builder: (context, child, controller) {
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: context.tabsRouter.activeIndex,
            onTap: context.tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.source),
                label: 'Books',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}
