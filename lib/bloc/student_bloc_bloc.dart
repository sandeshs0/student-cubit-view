import 'package:bloc/bloc.dart';
import 'package:bottomnavigationview/model/student_model.dart';
import 'package:equatable/equatable.dart';

part 'student_bloc_event.dart';
part 'student_bloc_state.dart';

class StudentBlocBloc extends Bloc<StudentBlocEvent, StudentBlocState> {
  StudentBlocBloc() : super(StudentBlocState.initial()) {
    on <AddStudentEvent>((event,emit)async{
      // Show Loading Bar
      emit(state.copyWith(isLoading: true));
      // Wait for 1 seconds
      await Future.delayed(const Duration(seconds: 1),(){
        emit(
          state.copyWith(
            students: state.students..add(event.studentModel),
            isLoading: false,
          ),
        );
      });
    });

  on <DeleteStudentEvent>((event, emit)async{
    // Show Loading bar
    emit(state.copyWith(isLoading: true));
    // Wait for 1 seconds
    await Future.delayed(const Duration(seconds: 1));
    final List <StudentModel>updatedStudents=List.from(state.students)..removeAt(event.index);
    emit(state.copyWith(
      students: updatedStudents,
      isLoading: false,
    ));
  });
  }
}
