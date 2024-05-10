import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:main_project/main.dart';
import 'package:main_project/presentation/router/page_builder.dart';
import 'package:main_project/presentation/router/routes.dart';

mixin RouterMixin on State<MyApp> {
  GoRouter? _router;

  GoRouter get router {
    _router ??= GoRouter(
      initialLocation: Routes.homePath,
      routes: [
        GoRoute(
          path: Routes.homePath,
          name: Routes.homeName,
          pageBuilder: (_, __) => pageHomeView(),
        ),
        GoRoute(
          path: Routes.webPath,
          name: Routes.webName,
          pageBuilder: (_, __) => pageWebView(),
        )
      ],
    );

    return _router!;
  }
}
