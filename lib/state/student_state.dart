import 'package:bottomnavigationview/model/student_model.dart';

class StudentState {
  final List<StudentModel> lstStudents;
  final bool isLoading;

  const StudentState({
    required this.lstStudents,
    required this.isLoading,
  });

  factory StudentState.initial() {
    return const StudentState(
      lstStudents: [],
      isLoading: false,
    );
  }

  StudentState copyWith({
    List<StudentModel>? lstStudents,
    bool? isLoading,
  }) {
    return StudentState(
      lstStudents: lstStudents ?? this.lstStudents,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
