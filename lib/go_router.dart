import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:practicas_riverpod/01_provider/simple_provider_screen.dart';
import 'package:practicas_riverpod/02_provider/router_screen.dart';
import 'package:practicas_riverpod/03_provider/state_provider_screen.dart';
import 'package:practicas_riverpod/04_todo/todo_screen.dart';
import 'package:practicas_riverpod/05_future_provider/future_provider_screen.dart';
import 'package:practicas_riverpod/06_family_future_provider/family_future_provider_screen.dart';
import 'package:practicas_riverpod/07_streamprovider/corregido_stream_provider.dart';
import 'package:practicas_riverpod/07_streamprovider/stream_provider_screen.dart';
import 'package:practicas_riverpod/08_state_notifier/state_notifier_screen.dart';
import 'package:practicas_riverpod/home_screen.dart';


final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: [

    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/provider',
      builder: (context, state) => const ProviderScreen(),
    ),

    GoRoute(
      path: '/provider-router',
      builder: (context, state) => const RouterScreen(),
    ),

    GoRoute(
      path: '/state-provider',
      builder: (context, state) => const StateProviderScreen(),
    ),

    GoRoute(
      path: '/todo',
      builder: (context, state) => const TodoScreen(),
    ),

    GoRoute(
      path: '/future-provider',
      builder: (context, state) => const FutureProviderScreen(),
    ),

    GoRoute(
      path: '/future-family-provider',
      builder: (context, state) => const FamilyFutureScreen(),
    ),

    GoRoute(
      path: '/stream-provider',
      builder: (context, state) => const StreamProviderScreen(),
    ),

    // GoRoute(
    //   path: '/change-notifier-provider',
    //   builder: (context, state) => const ChangeNotifierScreen(),
    // ),

    GoRoute(
      path: '/state-notifier-provider',
      builder: (context, state) => const StateNotifierScreen(),
    ),



  ]);
});