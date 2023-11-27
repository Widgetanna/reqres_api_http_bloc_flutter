import 'package:bloc_http_flutter/bloc/app_blocs.dart';
import 'package:bloc_http_flutter/elements/widger_bloc_body.dart';
import 'package:bloc_http_flutter/repo/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        BlocProvider<UserBloc>(
          create: (BuildContext context) => UserBloc(UserRepository()),
        
      
      child: Scaffold(
        appBar: AppBar(title: const Text('List de gagnants:')),
        body: blocBody(),
      ),
    );
  }

}