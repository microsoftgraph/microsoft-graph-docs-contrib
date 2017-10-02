# Attribute mapping function schema

Describes a function which can be used in an [attribute mapping](synchronization_attributeMapping.md) to transform one value into another

## JSON representation

```json
{
    "name": "String",
    "parameters": [{"@odata.type": "microsoft.graph.attributeMappingParameterSchema"}]
}
```

## Properties

| Property                   | Type                      | Description    |
|:---------------------------|:-------------------------|:---------------|
|name                        |String                    |Operator name |
|parameters                  |attributeMappingParameterSchema collection  |Collection of parameter descriptions|

### attributeMappingParameterSchema

| Property                   | Type                      | Description    |
|:---------------------------|:-------------------------|:---------------|
|allowMultipleOccurrences    |Boolean                   |Given parameter can be provided multiple times (i.e. multiple input strings into Concatenate(string,string,...) function) |
|name                        |String                    |Parameter name |
|required                    |Boolean                   |`true` if paramer is required. `false` otherwise |
|type                        |attributeType             |Type of the parameter. Supported values are `String`, `Integer`, `Reference`, `Binary`, `Boolean`|

## JSON Example

```json
{
    "name": "Append",
    "parameters": [
        {
            "allowMultipleOccurrences": false,
            "name": "source",
            "required": true,
            "type": "String"
        },
        {
            "allowMultipleOccurrences": false,
            "name": "suffix",
            "required": true,
            "type": "String"
        }
    ]
}
```