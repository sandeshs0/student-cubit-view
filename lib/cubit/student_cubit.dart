import 'package:bottomnavigationview/model/student_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/student_state.dart';

class StudentCubit extends Cubit<StudentState> {
  StudentCubit() : super(StudentState.initial());

  void addStudent(StudentModel student) {
    emit(state.copyWith(isLoading: true));

    Future.delayed(const Duration(seconds: 1), () {
      emit(
        state.copyWith(
          lstStudents: [...state.lstStudents, student], // New list
          isLoading: false,
        ),
      );
    });
  }

  void deleteStudent(int index) {
    emit(state.copyWith(isLoading: true));

    Future.delayed(const Duration(seconds: 1), () {
      final updatedList = List.of(state.lstStudents)
        ..removeAt(index); // New list
      emit(
        state.copyWith(
          lstStudents: updatedList,
          isLoading: false,
        ),
      );
    });
  }
}
