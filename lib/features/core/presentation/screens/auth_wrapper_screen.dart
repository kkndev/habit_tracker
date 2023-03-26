import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker/features/core/presentation/bloc/bloc.dart';

@RoutePage()
class AuthWrapperScreen extends StatelessWidget implements AutoRouteWrapper {
  const AuthWrapperScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget wrappedRoute(context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<CoreBloc, CoreState>(
          listener: (ctx, state) {
            if (state.error != null) {
              showAboutDialog(context: context);
            }
          },
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
