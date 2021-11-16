import 'package:flutter/material.dart';

import '../models/todo.dart';

class TodoItem extends StatefulWidget {
  final Todo todo;
  const TodoItem({
    Key? key,
    required this.todo,
  }) : super(key: key);

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool _checked = false;

  bool get isDone => _checked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            setState(() {
              _checked = !_checked;
            });
          },
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: 16,
                    height: 16,
                    margin: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(
                        4,
                      ),
                      border: Border.all(color: Colors.white, width: 1.5),
                    ),
                  ),
                  if (isDone)
                    Positioned(
                      left: 8,
                      bottom: 7,
                      child: Container(
                        padding: const EdgeInsets.only(right: 2.0),
                        color: Colors.transparent,
                        child: const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    )
                ],
              ),
              const SizedBox(width: 8.0),
              Text(
                widget.todo.label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                  decorationColor: isDone ? Colors.white : null,
                  decorationStyle: isDone ? TextDecorationStyle.solid : null,
                  decoration: isDone ? TextDecoration.lineThrough : null,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
