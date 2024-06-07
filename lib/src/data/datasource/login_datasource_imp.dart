import 'package:injectable/injectable.dart';
import 'package:sharedexperiences/src/data/datasource/firebase_repository.dart';
import 'package:sharedexperiences/src/data/datasource/interfaces/ilogin_datasources.dart';

@Injectable(as: ILoginDataSource)
class LoginDataSourceImp extends ILoginDataSource {
  final FirebaseRepository _firebaseRepository;

  LoginDataSourceImp(this._firebaseRepository);

  @override
  Future<void> sendLogin(String email, String password) async {
    _firebaseRepository.signInWithCredentials(email, password);
  }



}
