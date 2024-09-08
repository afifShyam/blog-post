import 'dart:ui' as ui;

import 'package:blogpost/application/index.dart';
import 'package:blogpost/infrastructure/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 2,
      title: const Align(
        alignment: Alignment.topLeft,
        child: Text(
          'BPL',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            fontFamily: 'Merriweather',
            color: Colors.white,
            // foreground: Paint()
            //   ..shader = ui.Gradient.linear(
            //     const Offset(20, 190),
            //     const Offset(80, 9),
            //     <Color>[
            //       Colors.blue,
            //       Colors.red,
            //     ],
            //     <double>[
            //       0,
            //       0,
            //     ],
            //   ),
          ),
        ),
      ),
      // centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 40,
          ),
          child: BlocBuilder<UtilsCubit, UtilsState>(
            builder: (utilContext, state) {
              return Row(
                children: [
                  buildHoverButton(
                    context,
                    label: 'Home',
                    isHovered: state.hoverPost,
                    onEnter: (_) =>
                        utilContext.read<UtilsCubit>().hoverPost(true),
                    onExit: (_) =>
                        utilContext.read<UtilsCubit>().hoverPost(false),
                    onTap: () {
                      context.go('/');
                    },
                  ),
                  buildHoverButton(
                    context,
                    label: 'User',
                    isHovered: state.hoverAppBar,
                    onEnter: (_) =>
                        utilContext.read<UtilsCubit>().hoverUser(true),
                    onExit: (_) =>
                        utilContext.read<UtilsCubit>().hoverUser(false),
                    onTap: () {
                      context.go('/user');
                    },
                  ),
                  buildHoverButton(
                    context,
                    label: 'Create Post',
                    isHovered: state.hoverCreatePost,
                    onEnter: (_) =>
                        utilContext.read<UtilsCubit>().hoverCreatePost(true),
                    onExit: (_) =>
                        utilContext.read<UtilsCubit>().hoverCreatePost(false),
                    onTap: () {
                      context.go('/create_post');
                    },
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
