// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:number_trivia/core/error/failures.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/features/number_trivia/domain/repositories/number_trivia_repositories.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepositoriy numberTriviaRepositoriy;
  GetConcreteNumberTrivia({
    required this.numberTriviaRepositoriy,
  });

  Future<Either<Failure, NumberTrivia>> execute({required int number}) async {
    return await numberTriviaRepositoriy.getConcreteNumberTrivia(number);
  }
}
