import 'node_state_enum.dart';

abstract class Node {
  const Node();
  NodeState evaluate();
}
