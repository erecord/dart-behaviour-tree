import 'actions/failing_action_node.dart';
import 'common/node_iterator.dart';
import 'actions/print_message_action_node.dart';
import 'tree_runner_strategies/repeat_until_fail_tree_runner.dart';
import 'composites/sequence_node.dart';
import 'common/tree_runner.dart';

void main() {
  final node1 = PrintMessageActionNode("message 1 ");
  final node2 = PrintMessageActionNode("message 2 ");
  final node3 = FailingActionNode();

  final nodeIterator = NodeIterator([
    node1,
    node2,
    node3,
  ]);
  final compositeNode = SequenceNode(nodeIterator);

  final treeRunner =
      TreeRunner(compositeNode, RepeatUntilFailTreeRunner(maxRetries: 2));

  treeRunner.start();
}
