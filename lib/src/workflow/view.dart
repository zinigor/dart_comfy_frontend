import 'package:flutter/material.dart';
import 'model.dart';
import 'view/node.dart';

class WorkflowView extends StatelessWidget {

  final WorkflowModel workflow;

  WorkflowView(this.workflow);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: workflow.nodes.map<WorkflowViewNode>((item) => WorkflowViewNode(item)).toList()
        ),
        TextButton(
          onPressed: () => workflow.loadExample(),
          child: Text('Load example'),
        )
      ]
    );
  }
}
