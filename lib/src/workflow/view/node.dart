import 'package:flutter/material.dart';
import '../node.dart';

class WorkflowViewNode extends StatelessWidget {
  const WorkflowViewNode(this.node, {super.key});

  final WorkflowNode node;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(node.type),
    );
  }
}
