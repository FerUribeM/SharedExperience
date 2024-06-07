abstract class ILoginDataSource {
  Future<void> sendLogin(String email, String password);
}