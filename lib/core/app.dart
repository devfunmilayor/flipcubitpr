import 'package:flipcubitpr/cubit/color/color_c_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

final allProvider = <SingleChildWidget>[
  BlocProvider(
    create: (_) => ColorCCubit(),
  ),
];
