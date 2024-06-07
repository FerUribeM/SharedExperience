import 'package:injectable/injectable.dart';
import 'package:sharedexperiences/src/data/presentation/resource.dart';
import 'package:sharedexperiences/src/data/repositories/interface/ilogin_repository.dart';
import 'package:sharedexperiences/src/domain/interfaces/ilogin_usecase.dart';

@LazySingleton(as: ILoginUseCase)
class LoginUsecase extends ILoginUseCase {

  final ILoginRepository _repository;

  LoginUsecase(this._repository);

  @override
  Future<Resource<String>> sendLogin(String email, String password) async {
    if(email.isEmpty){
      return setError('email_error');
    }
    if(password.isEmpty){
      return setError('password_error');
    }
    final response = _repository.sendLogin(email, password);
    return setSuccess("Response from repository");
  }

}