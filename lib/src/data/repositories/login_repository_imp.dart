import 'package:sharedexperiences/src/data/datasource/interfaces/ilogin_datasources.dart';
import 'package:sharedexperiences/src/data/repositories/interface/ilogin_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ILoginRepository)
class LoginRepositoryImp extends ILoginRepository {

  final ILoginDataSource _dataSource;

  LoginRepositoryImp(this._dataSource);

  @override
  Future<void> sendLogin(String email, String password) async {
    _dataSource.sendLogin(email, password);
  }

}