import 'package:flutter/material.dart';

import '../utility/app_Colors.dart';

class task_card extends StatefulWidget {
  const task_card({
    super.key,
  });

  @override
  State<task_card> createState() => _task_cardState();
}

class _task_cardState extends State<task_card> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title of the task',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text('Description of task'),
            Text('Date: 20/10/2024'),
            const SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildTaskStatusChip(),
                Wrap(
                  children: [
                    IconButton(onPressed: _OnTapEditButton, icon: Icon(Icons.edit),),
                    IconButton(onPressed: _OnTapDeleteButton, icon: Icon(Icons.delete),),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _OnTapEditButton(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('Edit Status'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: ['New','Completed','Cancelled','Progress'].map((e){
            return ListTile(
              onTap: (){},
              title: Text(e),
            );
          }).toList(),
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Cancel'),),
          TextButton(onPressed: (){}, child: Text('Ok'),),
        ],
      );
    }
    );
  }

  void _OnTapDeleteButton(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('Delete Status'),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Cancel'),),
          TextButton(onPressed: (){}, child: Text('Ok'),),
        ],
      );
    }
    );
  }

  Widget _buildTaskStatusChip() {
    return Chip(
                label: const Text('New',style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                side: const BorderSide(
                  color: AppColors.themeColor,
                ),
              );
  }
}
