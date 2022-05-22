import '../common/action_node.dart';
import '../common/node_state_enum.dart';

class FailingActionNode extends ActionNode {
  @override
  NodeState evaluate() {
    return NodeState.failure;
  }
}
