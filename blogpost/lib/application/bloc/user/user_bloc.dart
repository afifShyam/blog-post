import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:blogpost/domain/model/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/index.dart';

part 'user_state.dart';
part 'user_event.dart';
part 'user_bloc.freezed.dart';
part 'user_bloc.g.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState.initial()) {
    on<FetchUser>(_fetchUser);
  }

  Future<void> _fetchUser(FetchUser event, Emitter emit) async {
    try {
      emit(state.copyWith(userStatus: UserStatus.loading));
      final user = await UserRepo().getUser();
      emit(
        state.copyWith(
          userStatus: UserStatus.completed,
          user: user,
        ),
      );
    } catch (e) {
      log('error on _FetchUser: $e');
      emit(state.copyWith(userStatus: UserStatus.error));
    }
  }
}
