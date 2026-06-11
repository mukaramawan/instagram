import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram/core/usecase/usecase.dart';
import 'package:instagram/features/home/domain/repositories/home_repository.dart';

@injectable
class BookmarkItemUseCase implements UseCase<Unit, String> {
  const BookmarkItemUseCase(this._repository);

  final HomeRepository _repository;

  @override
  FutureEither<Unit> call(String params) {
    return _repository.bookmarkItem(params);
  }
}
