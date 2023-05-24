part of 'register_bloc.dart';


enum BlocState { init , loading, success , error}

class RegisterState extends Equatable{
  final BlocState? state;
  RegisterState({this.state})

  // @override
  // List<Object> get props => [state?];
}