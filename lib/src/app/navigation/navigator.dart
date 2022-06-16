import 'package:contest_1/src/home/view/home_view.dart';
import 'package:contest_1/src/profile/view/profile_view.dart';
import 'package:contest_1/src/skills/view/skills_view.dart';
import 'package:go_router/go_router.dart';

class NavigationService {
  NavigationService();
  static GoRouter get router => _goRouter;

  static final _goRouter = GoRouter(
    debugLogDiagnostics: true,
    urlPathStrategy: UrlPathStrategy.path,
    initialLocation: HomeView.routeName,
    routes: [
      GoRoute(
          path: HomeView.routeName,
          name: HomeView.routeName,
          builder: (context, state) => const HomeView(),
          routes: [
            GoRoute(
              path: ProfileView.routeName.replaceAll('/', ''),
              name: ProfileView.routeName,
              builder: (context, state) => const ProfileView(),
            ),
            GoRoute(
              path: SkillsView.routeName.replaceAll('/', ''),
              name: SkillsView.routeName,
              builder: (context, state) => const SkillsView(),
            ),
          ]),
    ],
  );
}
