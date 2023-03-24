import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../navigation/ht_router.dart';
import '../bloc/bloc.dart';

@RoutePage()
class MyHabitsPage extends StatelessWidget {
  const MyHabitsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoreBloc, CoreState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'My Habits',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => HTRouter(context).pop(),
                  child: const Text('Navigate back'),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
