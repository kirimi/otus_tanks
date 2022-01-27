import 'package:tanks/command.dart';
import 'package:tanks/uobject.dart';
import 'package:vector_math/vector_math.dart';

abstract class IMovable {
  Vector2 get position;
  set position(Vector2 value);
  Vector2 get velocity;
}

class MovableAdapter implements IMovable {
  MovableAdapter(this.uObject);

  final UObject uObject;

  @override
  Vector2 get position => uObject.get('position');

  @override
  set position(Vector2 value) => uObject.set('position', value);

  @override
  Vector2 get velocity => uObject.get('velocity');
}

class MoveCommand implements Command {
  MoveCommand(this.movable);

  final IMovable movable;

  @override
  void execute() {
    movable.position += movable.velocity;
  }
}
