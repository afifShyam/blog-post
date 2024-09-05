part of 'index.dart';

class UserRepo {
  Future<List<UserModel>> getUser() async {
    try {
      Dio dio = await HttpsConfig().getDio(
        queries: {},
      );

      Response response = await dio.get('/users');

      List<UserModel> data = List<UserModel>.from(
          response.data.map((data) => UserModel.fromJson(data)));

      return data;
    } catch (e) {
      log('error on getUser $e');
      throw 'error on getUser $e';
    }
  }
}

class PostRepo {
  Future<List<PostModel>> getPost() async {
    try {
      Dio dio = await HttpsConfig().getDio(
        queries: {},
      );

      Response response = await dio.get('/posts');

      List<PostModel> data = List<PostModel>.from(
          response.data.map((data) => PostModel.fromJson(data)));

      return data;
    } catch (e) {
      log('error on getPost $e');
      throw 'error on getPost $e';
    }
  }

  Future<PostModel> getSpecificPost({required int id}) async {
    try {
      Dio dio = await HttpsConfig().getDio(
        queries: {},
      );

      Response response = await dio.get('/posts/$id');

      final data = PostModel.fromJson(response.data);

      return data;
    } catch (e) {
      log('error on getSpecificPost $e');
      throw 'error on getSpecificPost $e';
    }
  }

  Future<int> sentPost({required FormData payload}) async {
    try {
      Dio dio = await HttpsConfig().getDio(
        queries: {},
      );

      Response response = await dio.post(
        '/posts',
        data: payload,
      );

      return response.data['id'];
    } catch (e) {
      log('error on getPost $e');
      throw 'error on getPost $e';
    }
  }

  Future<void> deletePost({required int postId}) async {
    try {
      Dio dio = await HttpsConfig().getDio(
        queries: {},
      );

      await dio.delete(
        '/posts/$postId',
      );
    } catch (e) {
      log('error on getPost $e');
      throw 'error on getPost $e';
    }
  }

  Future<void> updatePost(
      {required int postId, required FormData payload}) async {
    try {
      Dio dio = await HttpsConfig().getDio(
        queries: {},
      );

      await dio.put('/posts/$postId', data: payload);
    } catch (e) {
      log('error on getPost $e');
      throw 'error on getPost $e';
    }
  }

  Future<List<CommentModel>> getComments({required int postId}) async {
    try {
      Dio dio = await HttpsConfig().getDio(
        queries: {},
      );

      Response response = await dio.get('/posts/$postId/comments');

      List<CommentModel> data = List<CommentModel>.from(
          response.data.map((data) => CommentModel.fromJson(data)));

      return data;
    } catch (e) {
      log('error on getPost $e');
      throw 'error on getPost $e';
    }
  }
}
