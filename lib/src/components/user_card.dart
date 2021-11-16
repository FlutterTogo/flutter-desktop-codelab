import 'package:flutter/material.dart';

import '../components/todo_item.dart';
import '../models/todo.dart';
import '../constants.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/kevin-tran.png'),
                radius: 60,
              ),
              const SizedBox(height: 16.0),
              Text(
                'Kevin Tran',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.white,
                    ),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Pharmacy Resident',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontSize: 12.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              const SizedBox(height: 16.0),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Things to do : ',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    const SizedBox(height: 16.0),
                    ...todoList
                        .map(
                          (todo) => TodoItem(todo: todo),
                        )
                        .toList(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
