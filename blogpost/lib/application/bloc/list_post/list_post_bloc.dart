import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:blogpost/domain/model/index.dart';
import 'package:blogpost/infrastructure/index.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_post_state.dart';
part 'list_post_event.dart';
part 'list_post_bloc.freezed.dart';
part 'list_post_bloc.g.dart';

class ListPostBloc extends Bloc<ListPostEvent, ListPostState> {
  ListPostBloc() : super(ListPostState.initial()) {
    on<FetchListPost>(_fetchListPost);
    on<SentPost>(_sentPost);
    on<DeletePost>(_deletePost);
    on<GetSpecificPost>(_specificPost);
    on<GetSpecificComment>(_getSpecificComment);
    on<PostDummyData>(_postDummyData);
    on<UpdatePost>(_updatePost);
  }

  Future<void> _fetchListPost(FetchListPost event, Emitter emit) async {
    try {
      emit(state.copyWith(listPostStatus: ListPostStatus.loading));
      final listPost = await PostRepo().getPost();
      emit(
        state.copyWith(
          listPostStatus: ListPostStatus.completed,
          post: listPost,
        ),
      );
    } catch (e) {
      log('error on _FetchListPost: $e');
      emit(state.copyWith(listPostStatus: ListPostStatus.error));
    }
  }

  Future<void> _sentPost(SentPost event, Emitter emit) async {
    try {
      emit(state.copyWith(listPostStatus: ListPostStatus.loading));

      final id = await PostRepo().sentPost(
        payload: FormData.fromMap({
          'title': event.title,
          'body': event.body,
          'userId': 1,
        }),
      );
      emit(
        state.copyWith(
          listPostStatus: ListPostStatus.completed,
        ),
      );
      add(
        PostDummyData(
          dummyData: PostModel(
              userId: 1, id: id, title: event.title, body: event.body),
        ),
      );
      emit(
        state.copyWith(
          postStatus: PostStatus.completed,
        ),
      );
    } catch (e) {
      log('error on _sentPost: $e');
      emit(state.copyWith(
        listPostStatus: ListPostStatus.error,
        postStatus: PostStatus.error,
      ));
    }
  }

  Future<void> _deletePost(DeletePost event, Emitter emit) async {
    try {
      emit(state.copyWith(deletePostStatus: DeletePostStatus.loading));

      await PostRepo().deletePost(postId: event.postId);

      List<PostModel> deleteData = List<PostModel>.from(state.post);

      deleteData.removeWhere((element) => element.id == event.postId);
      emit(
        state.copyWith(
            deletePostStatus: DeletePostStatus.completed, post: deleteData),
      );
    } catch (e) {
      log('error on _sentPost: $e');
      emit(state.copyWith(deletePostStatus: DeletePostStatus.error));
    }
  }

  Future<void> _specificPost(GetSpecificPost event, Emitter emit) async {
    try {
      emit(state.copyWith(listPostStatus: ListPostStatus.loading));

      final specificData = await PostRepo().getSpecificPost(id: event.id);
      emit(
        state.copyWith(
          listPostStatus: ListPostStatus.completed,
          specificPost: specificData,
        ),
      );
    } catch (e) {
      log('error on _sentPost: $e');
      emit(state.copyWith(listPostStatus: ListPostStatus.error));
    }
  }

  Future<void> _getSpecificComment(
      GetSpecificComment event, Emitter emit) async {
    try {
      emit(state.copyWith(listPostStatus: ListPostStatus.loading));

      final data = await PostRepo().getComments(postId: event.postId);
      emit(
        state.copyWith(
          listPostStatus: ListPostStatus.completed,
          specificComment: data,
        ),
      );
    } catch (e) {
      log('error on _sentPost: $e');
      emit(state.copyWith(listPostStatus: ListPostStatus.error));
    }
  }

  Future<void> _updatePost(
      UpdatePost event, Emitter<ListPostState> emit) async {
    try {
      // emit(state.copyWith(listPostStatus: ListPostStatus.loading));

      await PostRepo().updatePost(
        postId: event.postId,
        payload: FormData.fromMap({
          'title': event.title,
          'body': event.body,
          'userId': event.userId,
        }),
      );

      List<PostModel> updateData = List<PostModel>.from(state.post);

      final index =
          updateData.indexWhere((element) => element.id == event.postId);
      if (index != -1) {
        updateData[index] = PostModel(
          id: event.postId,
          title: event.title,
          body: event.body,
          userId: event.userId,
        );
      }

      emit(
        state.copyWith(
          updateStatus: UpdateStatus.completed,
          post: updateData,
        ),
      );
    } catch (e) {
      log('error on _updatePost: $e');
      emit(
        state.copyWith(
          updateStatus: UpdateStatus.error,
        ),
      );
    }
  }

  void _postDummyData(PostDummyData event, Emitter emit) =>
      emit(state.copyWith(post: [...state.post, event.dummyData]));
}
