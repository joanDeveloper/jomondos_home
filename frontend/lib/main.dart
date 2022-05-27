import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jomondos_home/src/domain/services/providers_bloc.service.dart';

import 'src/domain/repositories/localstorage.repository.dart';
import 'src/domain/services/auth.services.dart';
import 'src/presentation/views/login/login.view.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: ProvidersBlocService().get(), child: JomondosHomeApp());
  }
}

class JomondosHomeApp extends StatelessWidget {
  JomondosHomeApp({Key? key}) : super(key: key);
  final AuthService _authService = AuthService(
      localStorageRepository: LocalStorageRepository("token_jomondos_home"));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Jomondo's Home",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.blue,
          ),
        ),
        home: FutureBuilder(
          future: _authService.getAuthenticatedLocalStorage(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.data != null && snapshot.data!.isNotEmpty) {
              return Text("data");
            }

            return LoginPage();
          },
        ));
  }
}
