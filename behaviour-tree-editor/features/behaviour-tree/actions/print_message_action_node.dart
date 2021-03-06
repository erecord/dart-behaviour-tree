import '../common/action_node.dart';
import '../common/node_state_enum.dart';

class PrintMessageActionNode extends ActionNode {
  const PrintMessageActionNode(String message) : _message = message;
  final String _message;
  @override
  NodeState evaluate() {
    print(_message);

    return NodeState.success;
  }
}
