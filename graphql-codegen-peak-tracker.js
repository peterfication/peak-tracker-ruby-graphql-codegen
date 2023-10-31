module.exports = {
  plugin(schema, _documents, _config) {
    // For more information about custom code generation
    // See https://the-guild.dev/graphql/codegen/docs/custom-codegen/plugin-structure

    const typesMap = schema.getTypeMap();
    console.log(typesMap);

    const generalOutput = [
      "# This file has been auto-generated. Don't edit it manually but run",
      '#',
      '#   yarn graphql:codegen',
      '',
      '# This is just for Ruby auto loading to be happy',
      'module GraphqlPeakTracker',
      'end',
    ];

    return [
      ...generalOutput,
      '',
    ].join('\n');
  },
};
