import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc.dart';

@RoutePage(name: 'HabitDetailsRoute')
class HabitDetailsPage extends StatefulWidget {
  final int id;

  const HabitDetailsPage({
    super.key,
    @pathParam this.id = -1,
  });

  @override
  HabitDetailsPageState createState() => HabitDetailsPageState();
}

class HabitDetailsPageState extends State<HabitDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoreBloc, CoreState>(
      builder: (context, state) {
        return const Scaffold(
          body: SizedBox(
            width: double.infinity,
            child: Card(
              margin: EdgeInsets.all(48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Habit details'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
