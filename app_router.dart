import 'package:flutter_application_1/screens/app.dart';
import 'package:flutter_application_1/screens/login.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/login', 
  routes: [
  GoRoute(
    name: LoginPage.name,
    path: '/login',
    builder: (context, state) => const LoginPage(),
  ),
GoRoute(
  path: '/app',
  builder: (context, state) {
    final username = state.extra as String;
    return BienvenidoScreen(username: username);
  },
),
]);
