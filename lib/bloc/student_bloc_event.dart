part of 'student_bloc_bloc.dart';

sealed class StudentBlocEvent extends Equatable {
  const StudentBlocEvent();

  @override
  List<Object> get props => [];
}

class AddStudentEvent extends StudentBlocEvent {
  final StudentModel studentModel;

  const AddStudentEvent(this.studentModel);
}

class DeleteStudentEvent extends StudentBlocEvent {
  final int index;

  const DeleteStudentEvent(this.index);
}
