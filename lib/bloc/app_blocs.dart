import 'package:bloc/bloc.dart';
import 'package:bloc_http_flutter/bloc/app_sates.dart';
import 'package:bloc_http_flutter/bloc/app_events.dart';
import 'package:bloc_http_flutter/repo/repositories.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;

  UserBloc(this._userRepository) : super(UserLoadingState()) {
    on<LoadUserEvent>((event, emit) async {
      emit(UserLoadingState());

      try {
        final users = await _userRepository.getUsers();
        print(users);
        //c'est une instance de le classe
        emit(UserLoadedState(users));
      } catch (e) {
        print('+++++Error: $e');
        emit(UserErrorState(e.toString()));
      }
    });
  }
}
