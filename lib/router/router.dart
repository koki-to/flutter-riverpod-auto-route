import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data_source/mock_firebase/auth.dart';
import '../feature/home/ui/home_page.dart';
import '../feature/home/ui/not_found_page.dart';
import '../feature/user/state/logged_in.dart';
import '../feature/user/ui/login_page.dart';
import '../util/logger.dart';
part 'router.gr.dart';
part 'router.g.dart';

@riverpod
Raw<AppRouter> appRouter(AppRouterRef ref) {
  final router = AppRouter(ref);
  ref.onDispose(router.dispose);
  return router;
}

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter implements AutoRouteGuard {
  AppRouter(this.ref);

  final Ref ref;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final routeName = resolver.route.name;
    logger.i('onNavigation(): routeName = $routeName');
    final loggedIn = ref.read(loggedInProvider);
    if (loggedIn) {
      resolver.next();
    } else if (routeName == LoginRoute.name) {
      resolver.next();
    } else {
      resolver.redirect(
        const LoginRoute(),
      );
    }
  }

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: HomeRoute.page,
        ),
        AutoRoute(
          path: '/login',
          page: LoginRoute.page,
        ),
        AutoRoute(
          path: '*',
          page: NotFoundRoute.page,
        ),
      ];
}
