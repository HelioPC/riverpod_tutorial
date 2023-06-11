import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/app/todo_notifier.dart';
import 'package:riverpod_tutorial/app/todo_state.dart';

final todoNotifierProvider = StateNotifierProvider<TodoNotifier, TodoState>(
  (ref) {
    return TodoNotifier();
  },
);
