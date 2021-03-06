import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:wordle/home_screen.dart';
import 'package:wordle/provider/main_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainProvider()),
      ],
      child: MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: 'Wordle Game',
        theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
        darkTheme: FlexThemeData.dark(scheme: FlexScheme.bahamaBlue),
        themeMode: ThemeMode.system,
      ),
    );
  }
}
