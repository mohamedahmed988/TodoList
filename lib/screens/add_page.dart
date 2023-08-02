import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/todo_provider.dart';


class AddTodoPage extends StatefulWidget {
  final Map? todo;

  const AddTodoPage({Key? key, this.todo}) : super(key: key);

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  bool isEdit = false;

  @override
  void initState() {
    super.initState();
    final todo = widget.todo;
    if (widget.todo != null) {
      isEdit = true;
      final title = todo?['title'];
      final description = todo?['description'];
      titleController.text = title;
      descriptionController.text = description;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? ' Edit Todo   ' : 'Add Todo  '),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              hintText: 'Title',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.white38),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.white),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Description',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.white38),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.white),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            controller: descriptionController,
            keyboardType: TextInputType.multiline,
            minLines: 5,
            maxLines: 8,
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: isEdit ? updateData : submitData,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 8, color: Colors.transparent),
                borderRadius: BorderRadius.circular(16),
              ),
              primary: Colors.orangeAccent,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
              backgroundColor: Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                isEdit ? ' Edit Todo   ' : 'Add Todo  ',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void submitData() {
    final title = titleController.text;
    final description = descriptionController.text;

    final todoProvider = Provider.of<TodoProvider>(context, listen: false);
    todoProvider.submitData(title, description);

    titleController.text = '';
    descriptionController.text = '';
  }

  void updateData() {
    final todo = widget.todo;
    if (todo == null) {
      print('You Can not call update without todo data');
      return;
    }

    final id = todo?['_id'];
    final title = titleController.text;
    final description = descriptionController.text;

    final todoProvider = Provider.of<TodoProvider>(context, listen: false);
    todoProvider.updateData(id, title, description);

    titleController.text = '';
    descriptionController.text = '';
  }
}
