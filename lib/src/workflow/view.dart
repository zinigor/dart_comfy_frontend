import 'package:flutter/material.dart';
import '../workflow/model.dart';

class WorkflowView extends StatelessWidget {

  final WorkflowModel workflow;

  WorkflowView(this.workflow);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: workflow.nodes.map<Text>((item) => Text(item.type)).toList()
        ),
        TextButton(
          onPressed: () => workflow.loadExample(),
          child: Text('Load example'),
        )
      ]
    );
  }
}
