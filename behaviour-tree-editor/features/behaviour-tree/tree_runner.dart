import 'composite_node.dart';
import 'node_state_enum.dart';
import 'tree_runner_strategy.dart';

class TreeRunner {
  const TreeRunner(
      CompositeNode rootNode, TreeRunnerStrategy treeRunnerStrategy)
      : _rootNode = rootNode,
        _treeRunnerStrategy = treeRunnerStrategy;

  final CompositeNode _rootNode;
  final TreeRunnerStrategy _treeRunnerStrategy;

  NodeState start() => _treeRunnerStrategy.start(_rootNode);
}
