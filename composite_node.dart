import 'node.dart';
import 'node_iterator.dart';
import 'node_state_enum.dart';

abstract class CompositeNode extends Node {
  const CompositeNode(NodeIterator nodeIterator) : _nodeIterator = nodeIterator;
  final NodeIterator _nodeIterator;
  void onNewState(NodeState newState);
  @override
  NodeState evaluate() {
    late NodeState newState;
    do {
      newState = _nodeIterator.current.evaluate();
      onNewState(newState);
    } while (_nodeIterator.moveNext());

    return newState;
  }
}
