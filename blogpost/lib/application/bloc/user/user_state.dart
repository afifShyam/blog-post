part of 'user_bloc.dart';

enum UserStatus {
  initial,
  loading,
  completed,
  error,
}

@freezed
class UserState with _$UserState {
  factory UserState({
    required final UserStatus userStatus,
    required final List<UserModel> user,
    required final String error,
  }) = _UserState;

  factory UserState.initial() => UserState(
        userStatus: UserStatus.initial,
        user: [],
        error: '',
      );

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}
