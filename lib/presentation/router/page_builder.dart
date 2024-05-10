import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:main_project/presentation/views/home_view.dart';
import 'package:main_project/presentation/views/web_view.dart';

Page<dynamic> pageHomeView() {
  return CustomTransitionPage(
    child: const HomeView(),
    transitionsBuilder: (_, animation, __, child) => FadeTransition(
      opacity: animation,
      child: child,
    ),
  );
}

Page<dynamic> pageWebView() {
  return CustomTransitionPage(
    child: const WebViewMain(),
    transitionsBuilder: (_, animation, __, child) => FadeTransition(
      opacity: animation,
      child: child,
    ),
  );
}
