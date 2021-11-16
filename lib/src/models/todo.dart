class Todo {
  final String label;
  final bool done;

  Todo({required this.label, required this.done});

  set done(bool state) => done = state;
}

final List<Todo> todoList = [
  Todo(label: 'Cleaning Bedroom', done: true),
  Todo(label: 'Feeding Pet', done: false),
  Todo(label: 'Read a Book', done: false),
  Todo(label: 'Workout', done: true),
  Todo(label: 'Update Blog', done: false),
];