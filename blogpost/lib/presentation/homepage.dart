import 'dart:developer';
import 'package:blogpost/application/index.dart';
import 'package:blogpost/domain/model/index.dart';
import 'package:blogpost/infrastructure/index.dart';
import 'package:blogpost/presentation/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isMobile = screenWidth < 650;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: _searchController,
                decoration: InputDecoration(
                  labelText: 'Search by Title and Body',
                  hintText: 'Enter post title and body',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                onChanged: (query) {
                  setState(() {
                    _searchQuery = query.toLowerCase();
                  });
                },
              ),
            ),
            BlocBuilder<ListPostBloc, ListPostState>(
              builder: (context, state) {
                if (state.listPostStatus == ListPostStatus.loading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state.listPostStatus == ListPostStatus.completed) {
                  final filteredPosts = state.post.where((post) {
                    return post.title.toLowerCase().contains(_searchQuery) ||
                        post.body.toLowerCase().contains(_searchQuery);
                  }).toList();

                  if (filteredPosts.isEmpty) {
                    return const Center(child: Text('No posts found.'));
                  }

                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 10.w : 40.w,
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.only(
                        top: 30.h,
                        bottom: 30.h,
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: isMobile ? 2 : 3,
                        mainAxisExtent: 350,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemCount: filteredPosts.length,
                      itemBuilder: (context, index) {
                        final post = filteredPosts[index];

                        return Container(
                          width: isMobile ? 100 : null,
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
                              horizontal: 20.w,
                              vertical: 24.h,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  post.title,
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: isMobile ? 12 : 22,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Merriweather',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 20.h),
                                Expanded(
                                  child: Text(
                                    removeNewLine(post.body),
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: isMobile ? 13 : 16,
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
                                            fontSize: isMobile ? 12 : 14,
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
                                      ElevatedButton(
                                        onPressed: () {
                                          log('sebenar: ${post.id}');
                                          context.go(
                                              '/specific_post/${post.id}/${post.userId}');
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blueAccent,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: isMobile ? 8.w : 10.w,
                                            vertical: 12.h,
                                          ),
                                          minimumSize: Size(
                                              isMobile ? 10.w : 70.w, 40.h),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: Text(
                                          'Read More',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: !isMobile ? 10 : 9.sp),
                                        ),
                                      ),
                                      SizedBox(width: 8.w),
                                      ElevatedButton(
                                        onPressed: () {
                                          _showDeleteConfirmationDialog(
                                              context, post);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.redAccent,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: isMobile ? 8.w : 10.w,
                                            vertical: 12.h,
                                          ),
                                          minimumSize: Size(
                                              isMobile ? 10.w : 70.w, 40.h),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: Text(
                                          'Delete',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  !isMobile ? 10.sp : 9.sp),
                                        ),
                                      ),
                                      SizedBox(width: 8.w),
                                      ElevatedButton(
                                        onPressed: () {
                                          _showUpdatePostDialog(context, post);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.orangeAccent,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: isMobile ? 8.w : 10.w,
                                            vertical: 12.h,
                                          ),
                                          minimumSize: Size(
                                              isMobile ? 10.w : 70.w, 40.h),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: Text(
                                          'Update',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  !isMobile ? 10.sp : 9.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
          ],
        ),
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
