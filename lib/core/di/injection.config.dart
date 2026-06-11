// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter/foundation.dart' as _i971;
import 'package:get_it/get_it.dart' as _i174;
import 'package:go_router/go_router.dart' as _i583;
import 'package:injectable/injectable.dart' as _i526;
import 'package:instagram/core/di/register_module.dart' as _i728;
import 'package:instagram/core/network/api_client.dart' as _i1052;
import 'package:instagram/core/network/auth_interceptor.dart' as _i721;
import 'package:instagram/core/network/logging_interceptor.dart' as _i428;
import 'package:instagram/core/network/network_info.dart' as _i427;
import 'package:instagram/core/permissions/permission_bloc/permission_bloc.dart'
    as _i572;
import 'package:instagram/core/permissions/permission_service.dart' as _i797;
import 'package:instagram/core/permissions/permission_service_impl.dart'
    as _i395;
import 'package:instagram/core/router/app_router.dart' as _i27;
import 'package:instagram/core/storage/local_datasource.dart' as _i119;
import 'package:instagram/core/storage/local_datasource_impl.dart' as _i311;
import 'package:instagram/features/home/data/datasources/home_local_datasource.dart'
    as _i568;
import 'package:instagram/features/home/data/datasources/home_local_datasource_impl.dart'
    as _i280;
import 'package:instagram/features/home/data/datasources/home_remote_datasource.dart'
    as _i901;
import 'package:instagram/features/home/data/datasources/home_remote_datasource_impl.dart'
    as _i198;
import 'package:instagram/features/home/data/repositories/home_repository_impl.dart'
    as _i736;
import 'package:instagram/features/home/domain/repositories/home_repository.dart'
    as _i141;
import 'package:instagram/features/home/domain/usecases/bookmark_item_usecase.dart'
    as _i231;
import 'package:instagram/features/home/domain/usecases/get_cached_items_usecase.dart'
    as _i122;
import 'package:instagram/features/home/domain/usecases/get_home_items_usecase.dart'
    as _i895;
import 'package:instagram/features/home/presentation/bloc/home_bloc.dart'
    as _i647;
import 'package:instagram/features/home/presentation/cubit/home_cubit.dart'
    as _i563;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.singleton<_i971.ValueNotifier<bool>>(() => registerModule.authNotifier);
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i895.Connectivity>(() => registerModule.connectivity);
    gh.lazySingleton<_i583.GoRouter>(() => registerModule.goRouter);
    gh.lazySingleton<_i428.LoggingInterceptor>(
      () => _i428.LoggingInterceptor(),
    );
    gh.lazySingleton<_i27.AppRouter>(() => _i27.AppRouter());
    gh.lazySingleton<_i901.HomeRemoteDataSource>(
      () => _i198.HomeRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i797.PermissionService>(
      () => _i395.PermissionServiceImpl(),
    );
    gh.lazySingleton<_i119.LocalDataSource>(
      () => _i311.LocalDataSourceImpl(gh<_i460.SharedPreferences>()),
    );
    gh.factory<_i572.PermissionBloc>(
      () => _i572.PermissionBloc(gh<_i797.PermissionService>()),
    );
    gh.lazySingleton<_i427.NetworkInfo>(
      () => _i427.NetworkInfoImpl(gh<_i895.Connectivity>()),
    );
    gh.lazySingleton<_i568.HomeLocalDataSource>(
      () => _i280.HomeLocalDataSourceImpl(gh<_i119.LocalDataSource>()),
    );
    gh.lazySingleton<_i721.AuthInterceptor>(
      () => _i721.AuthInterceptor(
        gh<_i119.LocalDataSource>(),
        gh<_i27.AppRouter>(),
      ),
    );
    gh.lazySingleton<_i1052.ApiClient>(
      () => _i1052.ApiClient(
        gh<_i361.Dio>(),
        gh<_i721.AuthInterceptor>(),
        gh<_i428.LoggingInterceptor>(),
      ),
    );
    gh.lazySingleton<_i141.HomeRepository>(
      () => _i736.HomeRepositoryImpl(
        gh<_i901.HomeRemoteDataSource>(),
        gh<_i568.HomeLocalDataSource>(),
        gh<_i427.NetworkInfo>(),
      ),
    );
    gh.factory<_i231.BookmarkItemUseCase>(
      () => _i231.BookmarkItemUseCase(gh<_i141.HomeRepository>()),
    );
    gh.factory<_i122.GetCachedItemsUseCase>(
      () => _i122.GetCachedItemsUseCase(gh<_i141.HomeRepository>()),
    );
    gh.factory<_i895.GetHomeItemsUseCase>(
      () => _i895.GetHomeItemsUseCase(gh<_i141.HomeRepository>()),
    );
    gh.factory<_i647.HomeBloc>(
      () => _i647.HomeBloc(
        gh<_i895.GetHomeItemsUseCase>(),
        gh<_i122.GetCachedItemsUseCase>(),
        gh<_i231.BookmarkItemUseCase>(),
      ),
    );
    gh.factory<_i563.HomeCubit>(
      () => _i563.HomeCubit(
        gh<_i895.GetHomeItemsUseCase>(),
        gh<_i122.GetCachedItemsUseCase>(),
        gh<_i231.BookmarkItemUseCase>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i728.RegisterModule {}
