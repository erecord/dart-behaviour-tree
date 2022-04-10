import 'composite_node.dart';
import 'node_state_enum.dart';
import 'tree_runner.dart';

class RepeatUntilFailTreeRunner extends TreeRunner {
  const RepeatUntilFailTreeRunner(CompositeNode rootNode) : super(rootNode);

  @override
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
