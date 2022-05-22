import '../common/composite_node.dart';
import '../common/node_iterator.dart';
import '../common/node_state_enum.dart';

class SequenceNode extends CompositeNode {
  SequenceNode(NodeIterator nodeIterator) : super(nodeIterator);

  @override
  void onNewState(NodeState newState) {
    print("SequenceNode - The new state was $newState");
  }
}
