import '../../elements/class/target_class_mapper_element.dart';
import '../generator.dart';

extension InitializerExtension<T extends TargetClassMapperElement>
    on MapperGenerator<T> {
  void generateInitializer(StringBuffer output) {
    output.write('''
      static ${element.mapperName}? _instance;
      static ${element.mapperName} ensureInitialized() {
        if (_instance == null) {   
    ''');

    var typesConfigs = element.customTypes;
    if (typesConfigs.isNotEmpty) {
      for (var t in typesConfigs) {
        var typeName = t.$1;
        var typeParams = t.$2;
        if (typeParams.isNotEmpty) {
          output.write(
              '      MapperBase.addType<$typeName>(<${typeParams.join(', ')}>(f) => f<$typeName<${typeParams.join(', ')}>>());\n');
        } else {
          output.write('      MapperBase.addType<$typeName>();\n');
        }
      }
    }

    output.write(
        '      MapperContainer.globals.use(_instance = ${element.mapperName}._());\n');

    if (element.isDiscriminatingSubclass) {
      var s = element.superElement!;
      var prefix = element.parent.prefixOfElement(s.annotation.element);
      output.write(
          '      $prefix${s.mapperName}.ensureInitialized().addSubMapper(_instance!);\n');
    } else if (element.isSubclass) {
      var s = element.superElement!;
      var prefix = element.parent.prefixOfElement(s.annotation.element);
      output.write('      $prefix${s.mapperName}.ensureInitialized();\n');
    }

    var customMappers = element.customMappers;
    if (customMappers != null) {
      output.write('      MapperContainer.globals.useAll($customMappers);\n');
    }

    var linked = element.linkedElements;
    if (linked.isNotEmpty) {
      for (var l in linked) {
        output.write('      $l.ensureInitialized();\n');
      }
    }

    output.write('    }\n'
        '    return _instance!;\n'
        '  }');
  }
}
