import 'failing_action_node.dart';
import 'node.dart';
import 'node_state_enum.dart';
import 'print_message_action_node.dart';
import 'tree_runner.dart';

class SequenceNode extends Node {
  SequenceNode(List<Node> children) : _children = children;

  final List<Node> _children;
  var _currentChildIndex = 0;
  @override
  NodeState evaluate() {
    do {
      var childStatus = _children[_currentChildIndex].evaluate();

      if (childStatus != NodeState.success) {
        return childStatus;
      }
    } while (++_currentChildIndex < _children.length);

    return NodeState.success;
  }
}

final node1 = PrintMessageActionNode("message 1 ");
final node2 = PrintMessageActionNode("message 2 ");
final node3 = FailingActionNode();

void main() {
  final node = SequenceNode([node1, node2, node1, node3]);

  final treeRuneer = TreeRunner(node);

  treeRuneer.start();
}
