abstract class ILoginRepository {
  Future<void> sendLogin(String email, String password);
}