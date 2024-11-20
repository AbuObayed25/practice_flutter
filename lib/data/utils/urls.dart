class Urls{
  static const String _baseurl='http://35.73.30.144:2005/api/v1';

  static const String registration ='$_baseurl/Registration';
  static const String login ='$_baseurl/login';
  static const String addNewTask ='$_baseurl/CreateTask';
  static const String newTaskList ='$_baseurl/listTaskByStatus/New';
  static const String completedTaskList ='$_baseurl/listTaskByStatus/Completed';
  static const String cancelledTaskList ='$_baseurl/listTaskByStatus/Cancelled';
  static const String progressTaskList ='$_baseurl/listTaskByStatus/Progress';
}