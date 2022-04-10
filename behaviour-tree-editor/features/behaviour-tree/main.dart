import 'failing_action_node.dart';
import 'node_iterator.dart';
import 'print_message_action_node.dart';
import 'repeat_until_fail_tree_runner.dart';
import 'sequence_node.dart';
import 'tree_runner.dart';

void main() {
  final node1 = PrintMessageActionNode("message 1 ");
  final node2 = PrintMessageActionNode("message 2 ");
  final node3 = FailingActionNode();

  final nodeIterator = NodeIterator([
    node1,
    node2,
  ]);
  final compositeNode = SequenceNode(nodeIterator);

  final simpleTreeRunner =
      TreeRunner(compositeNode, RepeatUntilFailTreeRunner(maxRetries: 2));

  simpleTreeRunner.start();
}
