// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/services/demo_service.dart' as _i12;
import '../data/datasource/firebase_repository.dart' as _i3;
import '../data/datasource/interfaces/ilogin_datasources.dart' as _i5;
import '../data/datasource/login_datasource_imp.dart' as _i6;
import '../data/repositories/interface/ilogin_repository.dart' as _i7;
import '../data/repositories/login_repository_imp.dart' as _i8;
import '../domain/interfaces/ilogin_usecase.dart' as _i9;
import '../domain/usecases/login_usecase.dart' as _i10;
import '../pages/login/login_provider.dart' as _i11;
import '../provider/home_provider.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.FirebaseRepository>(() => _i3.FirebaseRepository());
    gh.factory<_i4.HomeProvider>(() => _i4.HomeProvider());
    gh.factory<_i5.ILoginDataSource>(
        () => _i6.LoginDataSourceImp(gh<_i3.FirebaseRepository>()));
    gh.factory<_i7.ILoginRepository>(
        () => _i8.LoginRepositoryImp(gh<_i5.ILoginDataSource>()));
    gh.lazySingleton<_i9.ILoginUseCase>(
        () => _i10.LoginUsecase(gh<_i7.ILoginRepository>()));
    gh.factory<_i11.LoginProvider>(
        () => _i11.LoginProvider(gh<_i9.ILoginUseCase>()));
    gh.factory<_i12.ServiceA>(() => _i12.ServiceA());
    return this;
  }
}
