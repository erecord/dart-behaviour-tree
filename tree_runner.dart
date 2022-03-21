import 'node_state_enum.dart';
import 'sequence_node.dart';

class TreeRunner {
  const TreeRunner(SequenceNode nodeTree) : _nodeTree = nodeTree;
  final SequenceNode _nodeTree;

  NodeState start() {
    NodeState result = NodeState.running;
    while (result == NodeState.running) {
      result = _nodeTree.evaluate();
      switch (result) {
        case NodeState.success:
          // Do nothing
          break;
        case NodeState.failure:
          print("Behaviour tree error.");
          break;
        default:
      }
    }

    return result;
  }
}
