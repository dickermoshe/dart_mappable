@MappableLib(caseStyle: CaseStyle.snakeCase)
library;

import 'package:dart_mappable/dart_mappable.dart';
import 'package:test/test.dart';

import 'other/food.dart' as f;
import 'other/models.dart' as m;
import 'other/other.dart' as o;

part 'external_types_test.mapper.dart';

@MappableClass()
typedef Cake = f.Cake;

@MappableClass()
typedef Person2 = m.Person;

@MappableClass(discriminatorKey: 'type')
typedef Animal = o.Animal;

@MappableClass()
typedef Pet = o.Pet;

@MappableClass()
class Person with PersonMappable {
  final String firstName;

  Person(this.firstName);
}

void main() {
  group('external types', () {
    test('Mappers are generated correctly', () {
      expect(Person('Tom').toMap(), equals({'first_name': 'Tom'}));
      expect(Cake('Lemon').toMap(), equals({'type': 'Lemon'}));
      expect(Person('Anna').toMap(), equals({'first_name': 'Anna'}));
      expect(
        Pet(Person2('Clara'), 'Buddy').toMap(),
        equals({
          'owner': {'first_name': 'Clara'},
          'color': 'Buddy',
          'type': 'Pet',
        }),
      );

      expect(
        MapperContainer.globals.isEqual(
          AnimalMapper.fromMap({
            'type': 'Pet',
            'owner': {'first_name': 'Clara'},
            'color': 'Buddy',
          }),
          Pet(Person2('Clara'), 'Buddy'),
        ),
        isTrue,
      );
    });
  });
}
