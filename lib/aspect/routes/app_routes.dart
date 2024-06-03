import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:text_it_app/views/screens/get_start/get_start.dart';

class AppRoute
{



} 

class Routes {
  static const String welecomScreen = 'welecomScreen';
  static const String initialScreen = 'InitialScreen';
  static const String signInScreen = 'signIn';
  static const String signUpScreen = 'signUpScreen';
  static const String otpScreen = 'otpScreen';
  static const String homeScreen = 'homeScreen';
}

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
       name: Routes.initialScreen,
        path: '/',
        builder: (context, state) {
          return  const GetStartView();
        },
      ),
      
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: Scaffold());
    },
  );
}