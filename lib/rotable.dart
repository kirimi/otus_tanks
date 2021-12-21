import 'package:tanks/command.dart';
import 'package:tanks/uobject.dart';

abstract class IRotable {
  int get direction;
  set direction(int value);

  int get angularVelocity;

  int get maxDirection;
}

class RotableAdapter implements IRotable {
  RotableAdapter(this.uObject);

  final UObject uObject;

  @override
  int get direction => uObject.get('direction');

  @override
  set direction(int value) => uObject.set('direction', value);

  @override
  int get angularVelocity => uObject.get('angularVelocity');

  @override
  int get maxDirection => uObject.get('maxDirection');
}

class RotateCommand implements Command {
  RotateCommand(this.rotable);

  final IRotable rotable;

  @override
  void execute() {
    rotable.direction =
        (rotable.direction + rotable.angularVelocity) % rotable.maxDirection;
  }
}
