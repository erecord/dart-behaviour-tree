import 'composite_node.dart';
import 'node_state_enum.dart';

abstract class TreeRunnerStrategy {
  NodeState start(CompositeNode rootNode);
}
