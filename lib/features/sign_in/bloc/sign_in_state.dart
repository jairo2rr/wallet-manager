abstract class SignInState {}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInSuccessfully extends SignInState {
  final int userId;

  SignInSuccessfully({required this.userId});
}

class SignInError extends SignInState {
  final String message;

  SignInError({required this.message});
}
