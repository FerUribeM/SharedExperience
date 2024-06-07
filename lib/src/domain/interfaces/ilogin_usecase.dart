import 'package:sharedexperiences/src/data/presentation/resource.dart';

abstract class ILoginUseCase {
  Future<Resource<String>> sendLogin(String email, String password);
}
