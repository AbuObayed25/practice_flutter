import 'package:flutter/material.dart';
import 'package:practice_2/ui/screen/add_new_task_screen.dart';
import 'package:practice_2/ui/utility/app_Colors.dart';

import '../widgets/task_summary_card.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildSummarySection()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.themeColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewTaskScreen(),
            ),
          );
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }

  Widget _buildSummarySection() {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Row(
              children: [
                TaskSummaryCard(title: 'New', count: 9,),
                TaskSummaryCard(title: 'Completed', count: 9,),
                TaskSummaryCard(title: 'Cancelled', count: 9,),
                TaskSummaryCard(title: 'Progress', count: 9,),
              ],
            ),
          ),
        );
  }
  
}




