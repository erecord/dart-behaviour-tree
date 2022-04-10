import 'composite_node.dart';
import 'node_state_enum.dart';
import 'tree_runner_strategy.dart';

class SimpleTreeRunnerStrategy extends TreeRunnerStrategy {
  @override
  NodeState start(CompositeNode rootNode) {
    NodeState result = NodeState.running;
    while (result == NodeState.running) {
      result = rootNode.evaluate();
      // switch (result) {
      //   case NodeState.success:
      //     // Do nothing
      //     break;
      //   case NodeState.failure:
      //     // Do nothing
      //     break;
      //   default:
      // }
      print("SimpleTreeRunnerStrategy - Result: $result");
    }

    return result;
  }
}
