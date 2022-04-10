import 'composite_node.dart';
import 'node_state_enum.dart';

class TreeRunner {
  const TreeRunner(CompositeNode nodeTree) : _nodeTree = nodeTree;
  final CompositeNode _nodeTree;

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
