import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/domain/todo_model.dart';
import 'package:riverpod_tutorial/presentation/pages/home/constants/texts.dart';
import 'package:riverpod_tutorial/presentation/pages/home/widgets/todos_action_part.dart';
import 'package:riverpod_tutorial/presentation/pages/home/widgets/todos_part.dart';
import 'package:riverpod_tutorial/providers/todo_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoList =
        ref.watch(todoNotifierProvider.select((state) => state.todoList));
    final reversedTodoList = List<TodoModel>.from(todoList.reversed);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(25),
                child: Text(
                  titleText,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              TodosActionPart(),
              TodosPart(todoList: reversedTodoList),
            ],
          ),
        ),
      ),
    );
  }
}
