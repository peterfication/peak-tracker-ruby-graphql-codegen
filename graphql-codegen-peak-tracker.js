module.exports = {
  plugin(schema, _documents, _config) {
    // For more information about custom code generation
    // See https://the-guild.dev/graphql/codegen/docs/custom-codegen/plugin-structure

    const typesMap = schema.getTypeMap();
    // console.log(typesMap);

    const generalOutput = [
      "# This file has been auto-generated. Don't edit it manually but run",
      '#',
      '#   yarn graphql:codegen',
      '',
      '# This is just for Ruby auto loading to be happy',
      'module GraphqlPeakTracker',
      'end',
    ];

    const enumsOutput = customEnumTypeKeys(typesMap).map((typeKey) =>
      outputEnumType(typesMap[typeKey]),
    );

    const inputTypesOutput = customInputTypeKeys(typesMap).map((typeKey) =>
      outputInputObjectType(typesMap[typeKey], getCustomTypeNames(typesMap)),
    );

    const typesOutput = customObjectTypeKeys(typesMap).map((typeKey) =>
      outputObjectType(typesMap[typeKey], getCustomTypeNames(typesMap)),
    );

    const argumentsOutput = outputArgumentsModule(typesMap);

    return [
      ...generalOutput,
      ...enumsOutput,
      ...inputTypesOutput,
      ...typesOutput,
      ...argumentsOutput,
      '',
    ].join('\n');
  },
};

// These types are ignored as they are built into the GraphQL Ruby schema
const ignoredTypes = [
  'ID',
  'Int',
  'Float',
  'ISO8601DateTime',
  'ISO8601Date',
  'Boolean',
  'String',
  'Query',
  'Node',
];

/**
 * Get all custom enum type keys to generate enum type classes with it.
 */
const customEnumTypeKeys = (typesMap) =>
  customTypeKeys(typesMap).filter(
    (typeKey) => typesMap[typeKey].constructor.name === 'GraphQLEnumType',
  );

/**
 * Get all custom input type keys to generate input type classes with it.
 */
const customInputTypeKeys = (typesMap) =>
  customTypeKeys(typesMap).filter(
    (typeKey) =>
      typesMap[typeKey].constructor.name === 'GraphQLInputObjectType',
  );

/**
 * Get all custom object type keys to generate object type classes with it.
 */
const customObjectTypeKeys = (typesMap) =>
  customTypeKeys(typesMap).filter(
    (typeKey) =>
      typesMap[typeKey].constructor.name !== 'GraphQLEnumType' &&
      typesMap[typeKey].constructor.name !== 'GraphQLInputObjectType',
  );

/**
 * Get all custom type keys, meaning types that are special to the peak_tracker
 * service and not the general ones created by GraphQL Ruby.
 */
const customTypeKeys = (typesMap) =>
  Object.keys(typesMap)
    .filter(
      (typeKey) =>
        !ignoredTypes.includes(typesMap[typeKey].name) &&
        !typesMap[typeKey].name.startsWith('__'),
    )
    .sort((a, b) => getOrder(a) - getOrder(b));

/**
 * Get all the custom type names as an array so they can be used
 * in getTypeClass.
 */
const getCustomTypeNames = (typesMap) =>
  customTypeKeys(typesMap).map((customTypeKey) => typesMap[customTypeKey].name);

const camelToSnakeCase = (str) =>
  str.replace(/[A-Z]/g, (letter) => `_${letter.toLowerCase()}`);

const pascalToConstantCase = (str) =>
  camelToSnakeCase(str).toUpperCase().slice(1);

const order = [
  'PageInfo',
  'User',
  'PeakTrackerSortOrder',
  'Peak',
  'PeakEdge',
  'PeakFilterLatitude',
  'PeakFilterLongitude',
  'PeakFilterName',
  'PeakFilterOsmId',
  'PeakScaledByUserFieldInput',
  'PeakFilterScaleCount',
  'PeakFilterScaledByUser',
  'PeakFilterSlug',
  'PeakFilterWikidataId',
  'PeakFilterWikipedia',
  'PeakConnection',
];
/**
 * Order the type definitions so that a single Ruby file
 * won't have problems with classes that are not defined yet.
 */
const getOrder = (typeKey) =>
  order.includes(typeKey) ? order.indexOf(typeKey) : 999;

/**
 * Get the Ruby type class for the type of a field.
 */
const getTypeClass = (type, customTypeNames) => {
  const typeClass = type.ofType?.name || type.name;

  // console.log(
  //   'getTypeClass',
  //   typeClass,
  //   type.ofType?.constructor?.name,
  //   type.constructor?.name,
  // );

  if (type.ofType?.constructor?.name === 'GraphQLList') {
    return `[${getTypeClass(type.ofType.ofType, customTypeNames)}]`;
  }

  if (type.constructor?.name === 'GraphQLList') {
    return `[${getTypeClass(type.ofType, customTypeNames)}]`;
  }

  if (
    type.ofType?.constructor?.name === 'GraphQLEnumType' ||
    type.constructor?.name === 'GraphQLEnumType'
  ) {
    return `PeakTracker::Types::Enums::${typeClass}`;
  }

  if (
    type.ofType?.constructor?.name === 'GraphQLInputObjectType' ||
    type.constructor?.name === 'GraphQLInputObjectType'
  ) {
    return `PeakTracker::Types::Inputs::${typeClass}`;
  }

  if (customTypeNames.includes(typeClass)) {
    return `PeakTracker::Types::${typeClass}`;
  }

  return `GraphQL::Types::${typeClass}`;
};

/**
 * Generate the Ruby output for an object type.
 */
const outputInputObjectType = (objectType, customTypes) => {
  const outputHeader = [
    '',
    'module PeakTracker',
    '  module Types',
    '    module Inputs',
    `      class ${objectType.name} < ::Types::BaseInput`,
    `        graphql_name "PeakTracker${objectType.name}"`,
    `        description "${(objectType.description || '').replace(
      /\n$/g,
      '',
    )}"`,
    '',
  ];

  const fields =
    typeof objectType.getFields === 'function' ? objectType.getFields() : {};

  const outputFields = Object.keys(fields).map((fieldKey) => {
    const field = fields[fieldKey];

    const nullValue = field.type.constructor.name !== 'GraphQLNonNull';
    const typeClass = getTypeClass(field.type, customTypes);
    const description = (field.description || '')
      .replace(/\n$/g, '')
      .replaceAll('"', '\\"');

    return [
      `        argument :${camelToSnakeCase(field.name)}`,
      typeClass,
      `required: ${nullValue}`,
      `description: "${description}"`,
    ].join(', ');
  });

  const outputFooter = ['      end', '    end', '  end', 'end'];

  return [...outputHeader, ...outputFields, ...outputFooter].join('\n');
};
/**
 * Generate the Ruby output for an object type.
 */
const outputObjectType = (objectType, customTypes) => {
  const outputHeader = [
    '',
    'module PeakTracker',
    '  module Types',
    `    class ${objectType.name} < ::Types::BaseObject`,
    `      graphql_name "PeakTracker${objectType.name}"`,
    `      description "${(objectType.description || '').replace(/\n$/g, '')}"`,
    '',
  ];

  const fields =
    typeof objectType.getFields === 'function' ? objectType.getFields() : {};

  const outputFields = Object.keys(fields).map((fieldKey) => {
    const field = fields[fieldKey];

    const nullValue = field.type.constructor.name !== 'GraphQLNonNull';
    const typeClass = getTypeClass(field.type, customTypes);
    const description = (field.description || '')
      .replace(/\n$/g, '')
      .replaceAll('"', '\\"');

    return [
      `      field :${camelToSnakeCase(field.name)}`,
      typeClass,
      `null: ${nullValue}`,
      `description: "${description}"`,
    ].join(', ');
  });

  const outputFooter = ['    end', '  end', 'end'];

  return [...outputHeader, ...outputFields, ...outputFooter].join('\n');
};

/**
 * Ignore the arguments that come from GraphQL Ruby
 */
const ignoredArguments = ['id', 'first', 'after', 'last', 'before'];

const outputArgumentsModule = (typesMap) => {
  const outputHeader = [
    '',
    '# rubocop:disable Style/TrailingCommaInHashLiteral',
    'module PeakTracker',
    '  module Types',
    '    module Arguments',
    '      ##',
    '      # Example usage:',
    '      # field(...) do',
    '      #   PeakTracker::Types::Arguments.define_arguments(self, :PEAK, :scaled_by_user, %i[user_id])',
    '      # end',
    '      def self.define_arguments(type, constant, field, keys)',
    '        keys.each do |arg|',
    '          definition = Object.const_get("PeakTracker::Types::Arguments::#{constant}")[field][arg]',
    '          type.argument(',
    '            arg,',
    '            definition[:type],',
    '            required: definition[:required],',
    '            description: definition[:description]',
    '          )',
    '        end',
    '      end',
  ];

  const argumentsOutput = customObjectTypeKeys(typesMap)
    .map((typeKey) =>
      outputArguments(typesMap[typeKey], getCustomTypeNames(typesMap)),
    )
    .filter((output) => output !== '')
    .flatMap((output) => ['', ...output]);

  const outputFooter = [
    '    end',
    '  end',
    'end',
    '# rubocop:enable Style/TrailingCommaInHashLiteral',
  ];

  return [...outputHeader, ...argumentsOutput, ...outputFooter];
};
/**
 * Generate the Ruby output for an object type.
 */
const outputArguments = (objectType, customTypes) => {
  const outputHeader = [`      ${pascalToConstantCase(objectType.name)} = {`];

  const fields =
    typeof objectType.getFields === 'function' ? objectType.getFields() : {};

  const argumentsOutput = Object.keys(fields)
    .map((fieldKey) => {
      const field = fields[fieldKey];

      const fieldOutputHeader = [`        ${camelToSnakeCase(field.name)}: {`];

      const fieldOutputArguments = (field.args || [])
        // Ignore the arguments that come from GraphQL Ruby
        .filter((arg) => !ignoredArguments.includes(arg.name))
        .map((arg) => {
          const typeClass = getTypeClass(arg.type, customTypes);
          const description = (arg.description || '').replace(/\n$/g, '');
          const required = arg.type.constructor.name === 'GraphQLNonNull';

          return [
            `          ${camelToSnakeCase(arg.name)}: {`,
            `            type: ${typeClass},`,
            `            required: ${required},`,
            `            description: "${description}",`,
            // The default value should not be shown at all if there is no default value
            arg.defaultValue
              ? `            default_value: ${arg.defaultValue},`
              : undefined,
            `          },`,
          ]
            .filter((output) => output !== undefined)
            .join('\n');
        });

      const fieldOutputFooter = [`        },`];

      // If there are no relevant arguments, we don't want to generated an empty Hash
      if (fieldOutputArguments.length === 0) {
        return '';
      }

      return [
        ...fieldOutputHeader,
        ...fieldOutputArguments,
        ...fieldOutputFooter,
      ].join('\n');
    })
    .filter((output) => output !== '');

  // If there are no relevant arguments, we don't want to generate anything
  if (argumentsOutput.length === 0) {
    return '';
  }

  const outputFooter = ['      }.freeze'];

  return [...outputHeader, ...argumentsOutput, ...outputFooter];
};

/**
 * Generate the Ruby output for an enum type.
 */
const outputEnumType = (enumType) => {
  const outputHeader = [
    '',
    'module PeakTracker',
    '  module Types',
    '    module Enums',
    `      class ${enumType.name} < ::Types::BaseEnum`,
    `        graphql_name "PeakTracker${enumType.name}"`,
    `        description "${(enumType.description || '').replace(/\n$/g, '')}"`,
    '',
  ];

  const values = enumType.getValues();
  const outputValues = Object.keys(values).map((valueKey) => {
    const value = values[valueKey];

    return `        value "${value.name}", "${value.description}"`;
  });

  const outputFooter = ['      end', '    end', '  end', 'end'];

  return [...outputHeader, ...outputValues, ...outputFooter].join('\n');
};
