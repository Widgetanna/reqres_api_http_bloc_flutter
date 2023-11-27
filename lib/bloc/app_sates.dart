import 'package:bloc_http_flutter/model/user_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class UserState extends Equatable {}
//etat de chargement de données // data loading state
class UserLoadingState extends UserState {
  @override
  // la classe UserLoadingState n'a pas de propriétés supplémentaires, donc la liste est vide.
  List<Object?> get props => [];
}

//données chargés de serveur //data loaded state
class UserLoadedState extends UserState {
  UserLoadedState(this.users);
  final List<UserModel> users;
  @override
 List<Object?> get props => [users];
}
//loading error
class UserErrorState extends UserState {
  UserErrorState(this.error);
  final String error;
  @override
 List<Object?> get props => [error];
}