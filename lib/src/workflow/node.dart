import 'input.dart';
import 'output.dart';

class WorkflowNode {
  final int id;
  final String type;
  final List<double> position;
  final List<double> size;
  final Map<String, dynamic> flags;
  final int order;
  final int mode;
  final List<WorkflowInput> inputs;
  final List<WorkflowOutput> outputs;
  final Map properties;
  final String? color = null;
  final String? bgcolor = null;
  final List<dynamic>? widgets_values = [];

  WorkflowNode(
      this.id,
      this.type,
      this.position,
      this.size,
      this.flags,
      this.order,
      this.mode,
      this.inputs,
      this.outputs,
      this.properties,
      {
        String? color,
        String? bgcolor,
        List<dynamic>? widgets_values
      }
  );

  factory WorkflowNode.fromJSON(Map<String, dynamic> json) {
    final id = json['id'] as int;
    final type = json['type'] as String;
    final pos = json['pos'].map<double>((item) => item as double).toList();
    final size = json['size'].map<double>((item) => item as double).toList();
    final flags = json['flags'] as Map<String, dynamic>;
    final order = json['order'] as int;
    final mode = json['mode'] as int;
    final inputs = json['inputs'].map<WorkflowInput>((item) => WorkflowInput(item)).toList();
    final outputs = json['outputs'].map<WorkflowOutput>((item) => WorkflowOutput(item)).toList();
    final properties = json['properties'] as Map;
    final color = json['color'] as String?;
    final bgcolor = json['bgcolor'] as String?;
    final widgets_values = json['widgets_values'] as List<dynamic>?;

    return WorkflowNode(
      id,
      type,
      pos,
      size,
      flags,
      order,
      mode,
      inputs,
      outputs,
      properties,
      color: color,
      bgcolor: bgcolor,
      widgets_values: widgets_values
    );
  }
}
