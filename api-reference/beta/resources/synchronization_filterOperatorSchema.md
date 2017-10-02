# Filter operator schema

Describes an operator which can be used in a [scoping filter](synchronization_scopingFilter.md)

## JSON representation

```json
{
    "arity": {"@odata.type": "microsoft.graph.scopeOperatorType"},
    "multivaluedComparisonType": {"@odata.type": "microsoft.graph.scopeOperatorMultiValuedComparisonType"},
    "name": "String",
    "supportedAttributeTypes": [{"@odata.type": "microsoft.graph.attributeType"}]
}
```

## Properties

| Property                   | Type                      | Description    |
|:---------------------------|:--------------------------|:---------------|
|arity                       |scopeOperatorType          |Arity of the operator. Possible values are `Binary` and `Unary`. Default is `binary`|
|multivaluedComparisonType   |scopeOperatorMultiValuedComparisonType          |Possible values are `All` and `Any`. For multivalued attributes,`All` means that all values must satisfy the condition. `Any` means that at least one value has to satisfy the condition. Default is `All`|
|name                        |String                     |Operator name |
|supportedAttributeTypes     |scopeOperatorType          |Attribute types supported by the operator. Possible values attribute types


## JSON Example

```json
{
    "name": "EQUALS",
    "arity": "Binary",
    "multivaluedComparisonType": "All",
    "supportedAttributeTypes": [
        "Integer",
        "String"
    ]
}
```