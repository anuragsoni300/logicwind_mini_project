part of 'loginuser_cubit.dart';

@immutable
abstract class LoginuserState {}

class LoginuserInitial extends LoginuserState {}

class LoginuserExist extends LoginuserState {}

class WrongCredential extends LoginuserState {}

class LoginuserDone extends LoginuserState {
  final User user;

  LoginuserDone({required this.user});
}
