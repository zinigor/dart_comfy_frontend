import 'dart:convert';
import 'dart:collection';
import 'package:flutter/material.dart';
import '../workflow.dart';
import 'node.dart';

class WorkflowModel extends ChangeNotifier {

  Workflow? _workflow;

  UnmodifiableListView<WorkflowNode> get nodes => UnmodifiableListView(_workflow?.nodes ?? []);

  // void add(Item item) {
  //   _items.add(item);
  //   // This call tells the widgets that are listening to this model to rebuild.
  //   notifyListeners();
  // }
  //
  // /// Removes all items from the cart.
  // void removeAll() {
  //   _items.clear();
  //   // This call tells the widgets that are listening to this model to rebuild.
  //   notifyListeners();
  // }

  void loadExample() {
    const documentJson = '''
    {
    "last_node_id": 1,
    "last_link_id": 1,
    "nodes": [
    {
  "id": 67,
  "type": "Reroute",
  "pos": [
    351.7936096191406,
    1119.392822265625
  ],
  "size": [
    82,
    26
  ],
  "flags": {},
  "order": 95,
  "mode": 4,
  "inputs": [
    {
      "name": "",
      "type": "*",
      "link": 175
    }
  ],
  "outputs": [
    {
      "name": "MODEL",
      "type": "MODEL",
      "links": [
        257
      ],
      "slot_index": 0
    }
  ],
  "properties": {
    "showOutputText": true,
    "horizontal": false
  },
  "color": "#223",
  "bgcolor": "#335"
}

  ],
    "links": [],
    "groups": [],
    "config": {},
    "extra": {},
    "version": 0.4
  }
''';

    _workflow = Workflow.fromJSON(jsonDecode(documentJson));
    notifyListeners();
  }
}
