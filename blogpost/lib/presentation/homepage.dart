import 'dart:developer';

import 'package:blogpost/application/index.dart';
import 'package:blogpost/domain/model/index.dart';
import 'package:blogpost/infrastructure/index.dart';
import 'package:blogpost/presentation/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: const CustomAppBar(),
      body: BlocBuilder<ListPostBloc, ListPostState>(
        builder: (context, state) {
          if (state.listPostStatus == ListPostStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.listPostStatus == ListPostStatus.completed) {
            if (state.post.isEmpty) {
              return const Center(child: Text('No posts available.'));
            }

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: GridView.builder(
                padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 350,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: state.post.length,
                itemBuilder: (context, index) {
                  final post = state.post[index];

                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 24.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            post.title,
                            style: const TextStyle(
                              color: Colors.black87,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Merriweather',
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20.h),
                          Expanded(
                            child: Text(
                              removeNewLine(post.body),
                              style: const TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                height: 1.5,
                                fontFamily: 'OpenSans',
                              ),
                              textAlign: TextAlign.justify,
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Divider(color: Colors.grey[300]),
                          SizedBox(height: 10.h),
                          BlocBuilder<UserBloc, UserState>(
                            builder: (context, userState) {
                              if (userState.userStatus ==
                                  UserStatus.completed) {
                                final user = userState.user.firstWhere(
                                  (user) => user.id == post.userId,
                                );

                                return Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Posted By: ${user.username}',
                                    style: TextStyle(
                                      color: Colors.green[700],
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                );
                              } else {
                                return const Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text('Posted By: Unknown'),
                                );
                              }
                            },
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                // Read More Button
                                ElevatedButton(
                                  onPressed: () {
                                    log('sebenar: ${post.id}');
                                    context.go(
                                        '/specific_post/${post.id}/${post.userId}');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueAccent,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.w,
                                      vertical: 12.h,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: const Text(
                                    'Read More',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                ElevatedButton(
                                  onPressed: () {
                                    _showDeleteConfirmationDialog(
                                        context, post);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.redAccent,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.w,
                                      vertical: 12.h,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: const Text(
                                    'Delete',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                // Update Button
                                ElevatedButton(
                                  onPressed: () {
                                    _showUpdatePostDialog(context, post);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orangeAccent,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.w,
                                      vertical: 12.h,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: const Text(
                                    'Update',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else if (state.listPostStatus == ListPostStatus.error) {
            return const Center(child: Text('Failed to load posts.'));
          } else {
            return const Center(child: Text('Unexpected state.'));
          }
        },
      ),
    );
  }

  void _showDeleteConfirmationDialog(BuildContext context, PostModel post) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Post'),
          content: const Text('Are you sure you want to delete this post?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                context.read<ListPostBloc>().add(DeletePost(postId: post.id));
                Navigator.of(context).pop();
              },
              child: const Text(
                'Delete',
                style: TextStyle(color: Colors.redAccent),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showUpdatePostDialog(BuildContext context, PostModel post) {
    final TextEditingController titleController =
        TextEditingController(text: post.title);
    final TextEditingController bodyController =
        TextEditingController(text: post.body);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Update Post'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Title'),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: bodyController,
                maxLines: 5,
                decoration: const InputDecoration(labelText: 'Body'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                context.read<ListPostBloc>().add(
                      UpdatePost(
                        postId: post.id,
                        title: titleController.text,
                        body: bodyController.text,
                        userId: post.userId,
                      ),
                    );
                Navigator.of(context).pop();
              },
              child: const Text(
                'Update',
                style: TextStyle(color: Colors.orangeAccent),
              ),
            ),
          ],
        );
      },
    );
  }
}
