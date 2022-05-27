import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jomondos_home/src/domain/repositories/localstorage.repository.dart';
import 'package:jomondos_home/src/domain/services/auth.services.dart';
import 'package:jomondos_home/src/presentation/bloc/login/login_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  List<Map<String, dynamic>> data = [];
  final AuthService _authService = AuthService(
      localStorageRepository: LocalStorageRepository("token_jomondos_home"));

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _btnLogin() async {
    if (nameController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      final username = nameController.text;
      final passwd = passwordController.text;
      // final profile = await _authService.checkUser(username, passwd);

    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Jomondo's Home",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Inicio de Sessión',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  autofocus: true,
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'username',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'password',
                  ),
                ),
              ),
              Container(
                height: 50,
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                      onPressed: () => _btnLogin, child: const Text("Iniciar")))
            ],
          ));
    });
  }
}
