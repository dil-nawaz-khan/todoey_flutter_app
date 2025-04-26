import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
  });

  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  // void toggleCheckboxState(bool? value) {
  //   setState(() {
  //     isChecked = value!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

// class TaskCheckbox extends StatelessWidget {
//   const TaskCheckbox({super.key, required this.value, required this.onChanged});
//   final bool value;
//   final Function(bool?) onChanged;
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: value,
//       onChanged: onChanged,
//     );
//   }
// }
