import 'action_node.dart';
import '../node_state_enum.dart';

class FailingActionNode extends ActionNode {
  @override
  NodeState evaluate() {
    return NodeState.failure;
  }
}
