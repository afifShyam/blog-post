import 'package:blogpost/application/bloc/slider/slider_cubit.dart';
import 'package:blogpost/application/index.dart';
import 'package:blogpost/presentation/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const Homepage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Fade transition
            var tween = Tween(begin: 0.0, end: 1.0);
            final opacityAnimation = animation.drive(tween);
            return FadeTransition(opacity: opacityAnimation, child: child);
          },
        ),
      ),
      GoRoute(
        path: '/specific_post/:id/:username',
        pageBuilder: (context, state) {
          dynamic id = state.pathParameters['id'] ?? 0;
          dynamic username = state.pathParameters['username'] ?? 0;
          return CustomTransitionPage(
            key: state.pageKey,
            child: MultiBlocProvider(
              providers: [
                BlocProvider<ListPostBloc>(
                  create: (_) => ListPostBloc()
                    ..add(GetSpecificPost(id: int.parse(id)))
                    ..add(GetSpecificComment(postId: int.parse(id))),
                ),
              ],
              child: SpecificPost(
                id: id,
                username: username,
              ),
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var tween = Tween(begin: 0.0, end: 1.0);
              final opacityAnimation = animation.drive(tween);
              return FadeTransition(opacity: opacityAnimation, child: child);
            },
          );
        },
      ),
      GoRoute(
        path: '/create_post',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const CreatePostPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var tween = Tween(begin: 0.0, end: 1.0);
            final opacityAnimation = animation.drive(tween);
            return FadeTransition(opacity: opacityAnimation, child: child);
          },
        ),
      ),
      GoRoute(
        path: '/user',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: BlocProvider(
              create: (context) => SliderCubit(),
              child: const UserTablePage(
                  // users: context.read<UserBloc>().state.user,
                  ),
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var tween = Tween(begin: 0.0, end: 1.0);
              final opacityAnimation = animation.drive(tween);
              return FadeTransition(opacity: opacityAnimation, child: child);
            },
          );
        },
      ),
    ],
    errorPageBuilder: (context, state) => CustomTransitionPage(
      key: state.pageKey,
      child: Scaffold(
        body: Center(
          child: Text(state.error.toString()),
        ),
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var tween = Tween(begin: 0.0, end: 1.0);
        final opacityAnimation = animation.drive(tween);
        return FadeTransition(opacity: opacityAnimation, child: child);
      },
    ),
  );
}
