import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../bloc/bloc.dart';

@RoutePage()
class RootWrapperScreen extends StatelessWidget implements AutoRouteWrapper {
  const RootWrapperScreen({
    Key? key,
  }) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
