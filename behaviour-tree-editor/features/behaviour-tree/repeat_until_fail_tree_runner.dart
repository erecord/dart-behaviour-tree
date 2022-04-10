import 'composite_node.dart';
import 'node_state_enum.dart';
import 'tree_runner_strategy.dart';

class RepeatUntilFailTreeRunner extends TreeRunnerStrategy {
  RepeatUntilFailTreeRunner({int? maxRetries}) : _maxRetries = maxRetries;

  final int? _maxRetries;

  /// Starts at [-1] so that the first run is not counted as a retry.
  ///
  /// This is a zero-based number.
  int _runCount = -1;

  bool get maxRetriesMet => _maxRetries != null && _runCount >= _maxRetries!;

  @override
  NodeState start(CompositeNode rootNode) {
    NodeState result = NodeState.running;
    while (!maxRetriesMet &&
        (result == NodeState.running || result == NodeState.success)) {
      result = rootNode.evaluate();
      _runCount++;
      switch (result) {
        case NodeState.success:
          if (rootNode.iteratorIsAtEnd) {
            rootNode.resetNode();
          }
          break;
        case NodeState.failure:
          // Do nothing.
          break;
        default:
      }
      print("RepeatUntilFailTreeRunner (Run: $_runCount) - Result: $result");
    }

    return result;
  }
}
