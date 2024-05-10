import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:main_project/presentation/router/routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () => context.goNamed(Routes.webName),
          child: const Text('Navigate to web'),
        ),
      ),
    );
  }
}
