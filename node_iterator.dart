import 'node.dart';

class NodeIterator {
  NodeIterator(Iterable<Node> collection) : _collection = collection;
  final Iterable<Node> _collection;
  late int _activeIndex = 0;
  Node get current => _collection.elementAt(_activeIndex);
  bool get canMoveNextAgain => _activeIndex < _collection.length;

  bool moveNext() {
    if (_activeIndex < _collection.length) {
      _activeIndex++;
    }

    return canMoveNextAgain;
  }
}
