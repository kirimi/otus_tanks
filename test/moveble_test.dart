import 'package:tanks/movable.dart';
import 'package:tanks/uobject.dart';
import 'package:test/test.dart';
import 'package:vector_math/vector_math.dart';

void main() {
  test(
    'Для объекта, находящегося в точке (12, 5) и движущегося со скоростью (-7, 3) движение меняет положение объекта на (5, 8)',
    () {
      final obj = UObject();
      obj.set('position', Vector2(12, 5));
      obj.set('velocity', Vector2(-7, 3));

      final cmd = MoveCommand(MovableAdapter(obj));
      cmd.execute();

      expect(obj.get('position'), Vector2(5, 8));
    },
  );

  test(
    'Попытка сдвинуть объект, у которого невозможно прочитать положение в пространстве, приводит к ошибке',
    () {
      final obj = UObject();
      obj.set('position', Vector2(12, 5));

      final cmd = MoveCommand(MovableAdapter(obj));

      expect(() => cmd.execute(), throwsException);
    },
  );

  test(
    'Попытка сдвинуть объект, у которого невозможно прочитать значение мгновенной скорости, приводит к ошибке',
    () {
      final obj = UObject();
      obj.set('velocity', Vector2(-7, 3));

      final cmd = MoveCommand(MovableAdapter(obj));

      expect(() => cmd.execute(), throwsException);
    },
  );

  test(
    'Попытка сдвинуть объект, у которого невозможно изменить положение в пространстве, приводит к ошибке',
    () {
      final rotableObject = UObject();
      rotableObject.set('direction', 0);
      rotableObject.set('angularVelocity', 9);
      rotableObject.set('maxDirection', 8);

      final cmd = MoveCommand(MovableAdapter(rotableObject));

      expect(() => cmd.execute(), throwsException);
    },
  );
}
