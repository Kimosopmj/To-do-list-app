import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_list/Const/Colors.dart';
import 'package:todo_list/Model/Todo.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;

  const TodoItem({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print('clicked on a ToDo Item');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: const Color.fromRGBO(255, 255, 255, 1),
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdpink,
        ),
        // todo tasks
        title: Text(
          todo.todotext!,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        //Delete Icon
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdGrey,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              print('object deleted as you clicked on the delete button');
            },
          ),
        ),
      ),
    );
  }
}
