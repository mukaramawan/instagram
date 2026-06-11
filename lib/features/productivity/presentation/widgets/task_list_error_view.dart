import 'package:flutter/material.dart';
import 'package:instagram/shared/widgets/app_error_view.dart';

class TaskListErrorView extends StatelessWidget {
  const TaskListErrorView({
    required this.onRetry,
    super.key,
  });

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return AppErrorView(
      message: 'Unable to retrieve your tasks. Please try again.',
      onRetry: onRetry,
    );
  }
}
