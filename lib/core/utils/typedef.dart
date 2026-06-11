import 'package:dartz/dartz.dart';
import 'package:instagram/core/error/failures.dart';

export 'package:instagram/core/usecase/usecase.dart' show FutureEither;

typedef EitherOf<T> = Either<Failure, T>;
typedef NullableEither<T> = Either<Failure, T?>;
