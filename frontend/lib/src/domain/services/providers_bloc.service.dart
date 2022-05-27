import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jomondos_home/src/presentation/bloc/login/login_bloc.dart';

class ProvidersBlocService {
  List<BlocProvider> get() {
    return [
      BlocProvider<LoginBloc>(create: (_) => LoginBloc()),
     
    ];
  }
}