import 'package:auto_route/auto_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../feature/home/ui/home_page.dart';
import '../feature/home/ui/not_found_page.dart';
import '../feature/user/ui/login_page.dart';
part 'router.gr.dart';
part 'router.g.dart';

@riverpod
Raw<AppRouter> appRouter(AppRouterRef ref) {
  final router = AppRouter();
  ref.onDispose(router.dispose);
  return router;
}

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
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
