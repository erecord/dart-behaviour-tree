import '../common/composite_node.dart';
import '../common/node_state_enum.dart';
import '../common/tree_runner_strategy.dart';

class SimpleTreeRunnerStrategy extends TreeRunnerStrategy {
  @override
  NodeState start(CompositeNode rootNode) {
    NodeState result = NodeState.running;
    while (result == NodeState.running) {
      result = rootNode.evaluate();
      print("SimpleTreeRunnerStrategy - Result: $result");
    }

    return result;
  }
}
