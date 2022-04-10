import 'failing_action_node.dart';
import 'node_iterator.dart';
import 'print_message_action_node.dart';
import 'sequence_node.dart';

void main() {
  final node1 = PrintMessageActionNode("message 1 ");
  final node2 = PrintMessageActionNode("message 2 ");
  final node3 = FailingActionNode();

  final nodeIterator = NodeIterator([node1, node3, node2]);
  final compositeNode = SequenceNode(nodeIterator);

  final result = compositeNode.evaluate();

  print("Tree Result: $result");
}
