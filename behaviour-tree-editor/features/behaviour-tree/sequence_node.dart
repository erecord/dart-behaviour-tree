import 'composite_node.dart';
import 'node_iterator.dart';
import 'node_state_enum.dart';

class SequenceNode extends CompositeNode {
  SequenceNode(NodeIterator nodeIterator) : super(nodeIterator);

  @override
  void onNewState(NodeState newState) {
    print("SequenceNode - The new state was $newState");
  }
}
