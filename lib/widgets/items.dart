import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_list/Const/Colors.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: Icon(
          Icons.check_box,
          color: tdpink,
        ),
        // todo tasks
        title: Text(
          'Clock in on Keka',
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        //Delete Icon
        trailing: Container(
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
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
