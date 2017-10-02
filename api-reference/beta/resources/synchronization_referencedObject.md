# Referenced object

Describes a reference to another object defined in the same [directory definition](synchronization_directoryDefinition.md)

## JSON representation

```json
{
    "referencedObjectName": "String",
    "referencedProperty": "String"
}
```

## Properties

| Property                   | Type                      | Description    |
|:---------------------------|:--------------------------|:---------------|
|referencedObjectName        |String                     |Name of the referenced object. Must match one of the objects in the [directory definition](synchronization_directoryDefinition.md)|
|referencedProperty          |String                     |**Currently not supported**. Name of the property in the referenced object, whos value is used as the reference|


## JSON Example

```json
{
    "referencedObjectName": "User",
    "referencedProperty": null
}
```
            