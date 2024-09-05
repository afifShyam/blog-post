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
        builder: (context, state) => const Homepage(),
      ),
      GoRoute(
        path: '/specific_post/:id/:username',
        builder: (context, state) {
          dynamic id = state.pathParameters['id'] ?? 0;
          dynamic username = state.pathParameters['username'] ?? 0;
          return MultiBlocProvider(
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
          );
        },
      ),
      GoRoute(
        path: '/create_post',
        builder: (context, state) {
          return const CreatePostPage();
        },
      ),
      GoRoute(
        path: '/user',
        builder: (context, state) {
          return UserTablePage(
            users: context.read<UserBloc>().state.user,
          );
        },
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: Scaffold(
        body: Center(
          child: Text(state.error.toString()),
        ),
      ),
    ),
  );
}
