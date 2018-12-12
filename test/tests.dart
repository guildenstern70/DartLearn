import 'package:DartLearn/classes.dart';
import 'package:DartLearn/collections.dart';
import 'package:test/test.dart';

void main() {

  test('classes', () {
    var alessio = Person.ageOfTen('Alessio', 'Saltarin');
    var laura = Person('Laura', 'Saltarin', 47);

    expect(alessio.fullname, 'Alessio Saltarin');
    expect(alessio.age, 10);
    expect(laura.age, 47);
  });

  test('collections', () {
    expect(iterateList(), 6);
    expect(iterateGases(), 30);
  });

}
