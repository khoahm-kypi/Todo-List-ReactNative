import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../repositories/task_repository.dart';
import '../../core/use_case.dart';

class DeleteTask implements UseCase<void, DeleteTaskParams> {
  final TaskRepository repository;

  DeleteTask(this.repository);

  @override
  Future<Either<Failure, void>> call(DeleteTaskParams params) async {
    return await repository.deleteTask(params.id);
  }
}

class DeleteTaskParams extends Equatable {
  final String id;

  const DeleteTaskParams({required this.id});

  @override
  List<Object> get props => [id];
}
