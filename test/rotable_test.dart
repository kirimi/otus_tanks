import 'package:tanks/rotable.dart';
import 'package:tanks/uobject.dart';
import 'package:test/test.dart';
import 'package:vector_math/vector_math.dart';

void main() {
  test(
    'Для объекта, начально повернутого в положение 0 и угловой скоростью 9 и шагом направления 8, команда менят поворот на 1',
    () {
      final obj = UObject();
      obj.set('direction', 0);
      obj.set('angularVelocity', 9);
      obj.set('maxDirection', 8);

      final cmd = RotateCommand(RotableAdapter(obj));
      cmd.execute();

      expect(obj.get('direction'), 1);
    },
  );

  test(
    'Попытка повернуть объект, у которого невозможно прочитать direction, приводит к ошибке',
    () {
      final obj = UObject();
      obj.set('angularVelocity', 9);
      obj.set('maxDirection', 8);

      final cmd = RotateCommand(RotableAdapter(obj));

      expect(() => cmd.execute(), throwsException);
    },
  );

  test(
    'Попытка повернуть объект, у которого невозможно прочитать angularVelocity, приводит к ошибке',
    () {
      final obj = UObject();
      obj.set('direction', 0);
      obj.set('maxDirection', 8);

      final cmd = RotateCommand(RotableAdapter(obj));

      expect(() => cmd.execute(), throwsException);
    },
  );

  test(
    'Попытка повернуть объект, у которого невозможно прочитать maxDirection, приводит к ошибке',
    () {
      final obj = UObject();
      obj.set('direction', 0);
      obj.set('angularVelocity', 9);

      final cmd = RotateCommand(RotableAdapter(obj));

      expect(() => cmd.execute(), throwsException);
    },
  );

  test(
    'Попытка повернуть объект, который не поворачивается ',
    () {
      final movableObject = UObject();
      movableObject.set('position', Vector2(12, 5));
      movableObject.set('velocity', Vector2(-7, 3));

      final cmd = RotateCommand(RotableAdapter(movableObject));

      expect(() => cmd.execute(), throwsException);
    },
  );
}
