import 'dart:convert';
import 'workflow/node.dart';

class Workflow{
  final Map<String, dynamic> _json;
  Workflow() : _json = jsonDecode(documentJson);

  int get lastNodeId {
    if (_json case {'last_node_id': int lastNodeId}) {
      return lastNodeId;
    } else {
      throw const FormatException('Unexpected JSON');
    }
  }

  int get lastLinkId {
    if (_json case {'last_link_id': int lastLinkId}) {
      return lastLinkId;
    } else {
      throw const FormatException('Unexpected JSON');
    }
  }

  List<dynamic> get nodes {
    if (_json case {'nodes': List<dynamic> nodes}) {
      return nodes.map((node) => WorkflowNode.fromJSON(node)).toList();
    } else {
      throw const FormatException('Unexpected JSON');
    }
  }

  List<dynamic> get links {
    if (_json case {'links': List<dynamic> links}) {
      return links;
    } else {
      throw const FormatException('Unexpected JSON');
    }
  }

  List<dynamic> get groups {
    if (_json case {'groups': List<dynamic> links}) {
      return groups;
    } else {
      throw const FormatException('Unexpected JSON');
    }
  }

  Map get config {
    if (_json case {'config': Map config}) {
      return config;
    } else {
      throw const FormatException('Unexpected JSON');
    }
  }

  List<dynamic> get extra {
    if (_json case {'extra': List<dynamic> extra}) {
      return extra;
    } else {
      throw const FormatException('Unexpected JSON');
    }
  }

  String get version {
    if (_json case {'version': String version}) {
      return version;
    } else {
      throw const FormatException('Unexpected JSON');
    }
  }
}

const documentJson = '''
{
  "last_node_id": 1,
  "last_link_id": 1,
  "nodes": [],
  "links": [],
  "groups": [],
  "config": {},
  "extra": {},
  "version": 0.4
}
''';
