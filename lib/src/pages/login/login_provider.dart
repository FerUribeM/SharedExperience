import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sharedexperiences/src/data/presentation/resource.dart';

import '../../domain/interfaces/ilogin_usecase.dart';

@injectable
class LoginProvider extends ChangeNotifier {

  final ILoginUseCase _loginUseCase;

  LoginProvider(this._loginUseCase);

  bool _showLoading = false;

  bool get showLoading => _showLoading;

  set showLoading(bool value) {
    _showLoading = value;
    notifyListeners();
  }

  Future<void> sendLogin(String email, String password) async {
    showLoading = true;
    await Future.delayed(const Duration(seconds: 5));
    final response = await _loginUseCase.sendLogin(email, password);
    switch(response.state){
      case ResourceState.SUCCESS:
        {
          showLoading = false;
        }
      case ResourceState.ERROR:
        {
          showLoading = false;
        }
    }
    notifyListeners();
  }

}