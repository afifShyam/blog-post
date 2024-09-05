import 'dart:developer';

import 'package:blogpost/application/index.dart';
import 'package:blogpost/infrastructure/services/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'infrastructure/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = EnhancedBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
          MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height),
      builder: (_, __) => MultiBlocProvider(
        providers: [
          BlocProvider<UtilsCubit>(create: (context) => UtilsCubit()),
          BlocProvider<ListPostBloc>(
            create: (context) => ListPostBloc()..add(const FetchListPost()),
          ),
          BlocProvider<UserBloc>(
            create: (context) => UserBloc()..add(const FetchUser()),
          ),
        ],
        child: MaterialApp.router(
          title: 'Blog Post List',
          routerDelegate: _appRouter.router.routerDelegate,
          routeInformationParser: _appRouter.router.routeInformationParser,
          routeInformationProvider: _appRouter.router.routeInformationProvider,
          // debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
        ),
      ),
    );
  }
}
