import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskComplete;
  Function(bool?)? onChanged;
  Function(BuildContext?)? deleteFunction;

  TodoTile({
    super.key,
    required this.taskName,
    required this.taskComplete,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            CustomSlidableAction(
              onPressed: deleteFunction,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(12),
              child: Icon(Icons.delete, size: 24, color: Colors.white),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.only(left: 8, right: 8 , top: 0, bottom: 0),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              // check box
              Checkbox(
                value: taskComplete,
                onChanged: onChanged,
                activeColor: Colors.black,
              ),

              // task name
              Text(
                taskName,
                style: TextStyle(
                  decoration: taskComplete
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
