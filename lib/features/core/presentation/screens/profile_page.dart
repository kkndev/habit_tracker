import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../navigation/ht_router.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profile page',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                HTRouter(context).goToMyHabits();
              },
              child: const Text('My Habits'),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                HTRouter(context).goToMyHabits2();
              },
              child: const Text('My Habits'),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => HTRouter(context).pop(),
              child: const Text('Navigate Back'),
            ),
          ],
        ),
      ),
    );
  }
}
