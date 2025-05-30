import 'workflow/node.dart';

class Workflow{
  final int lastNodeId;
  final int lastLinkId;
  final List<WorkflowNode> nodes;
  final Set<dynamic> links;
  final List<dynamic> groups;
  final Map config;
  final Map<String, dynamic> extra;
  final String version;

  Workflow(
    this.lastNodeId,
    this.lastLinkId,
    this.nodes,
    this.links,
    this.groups,
    this.config,
    this.extra,
    this.version
  );

  factory Workflow.fromJSON( Map<String, dynamic> _json) {
    final lastNodeId = _json['last_node_id'] as int;
    final lastLinkId = _json['last_link_id'] as int;
    final nodes = _json['nodes'].map<WorkflowNode>((node) => WorkflowNode.fromJSON(node)).toList();
    final links = _json['links'].map((prop) => prop is String ? prop as int : prop as String).toSet();
    final groups = _json['groups'].map((group) => group as Map<String, dynamic>).toList() as List<dynamic>;
    final config = _json['config'] as Map;
    final extra = _json['extra'] as Map<String, dynamic>;
    final version = "${_json['version']}";

    return Workflow(
      lastNodeId,
      lastLinkId,
      nodes,
      links,
      groups,
      config,
      extra,
      version
    );
  }
}
