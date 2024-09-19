import 'dart:ffi';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_manager/features/sign_in/bloc/sign_in_event.dart';
import 'package:wallet_manager/features/sign_in/bloc/sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitial()) {
    on<SignInIntent>(_onSignInIntent);
  }

  Future<void> _onSignInIntent(
      SignInIntent event, Emitter<SignInState> emit) async {
    emit(SignInLoading());
    try {
      await Future.delayed(const Duration(seconds: 3));
      emit(SignInSuccessfully(userId: 2));
    } catch (e) {
      emit(SignInError(message: 'Failed to sign in'));
    }
  }

  Future<void> _onRedirectSignUp(
      RedirectSignUp event, Emitter<void> emit) async {
    try{
      print('Try to redirect to sign up');
    } catch(e){
      print(e);
    }
  }
}
