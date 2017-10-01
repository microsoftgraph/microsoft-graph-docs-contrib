# Attribute mapping

Defines how value for the given target atribute should flow during synchronization

## JSON representation

```json
{
    "defaultValue": "String",
    "exportMissingReferences": "Boolean",
    "flowBehavior": {"@odata.type": "microsoft.graph.attributeFlowBehavior"},
    "flowType": {"@odata.type": "microsoft.graph.attributeFlowType"},
    "matchingPriority": 0,
    "source": {"@odata.type": "microsoft.graph.attributeMappingSource"},
    "targetAttributeName": "String"
}
```

## Properties

| Property                  | Type                      | Description    |
|:--------------------------|:--------------------------|:---------------|
|defaultValue               | String                    |Default value to be used in case "source" property was evaluated to `null`. Optional|
|exportMissingReferences    |String                     |If target attribute type is a reference attribute, and referenced object is missing in the target directory, attempt to create such an object. ** *Experimental, not recommended for use* **|
|flowBehavior               |attributeFlowBehavior      |Defines when this attribute should be exported to target directory. Possible values: `FlowWhenChanged` and `FlowAlways`. Default is `FlowWhenChanged` |
|flowType                   |attributeFlowType          |Defines when this attribute should be updated in target directory. Possible values: `Always` (default), `ObjectAddOnly` (only when new object is created), `MultiValueAddOnly` (only when the change is adding new values to a multi-valued attribute)  |
|matchingPriority           |Integer                    |If higher than 0, this attribute will be used to perform inital match of the objects between source and target directories. Synchronization engine will try to find matching object using attribute  with lowest value of matching priority first. If not found, attribute with the next matching priority will be used, and so on until match is found or no more matching attributes are left. Only attributes which are expected to have unique values, such as email, should be used as matching attributes|
|source                     |[attributeMappingSource](synchronization_attributeMappingSource.md)     | Defines how a value should be extracted (or transformed) from the source object |
|targetAttributeName        |String                     |Name of the attribute on the target object, which this mapping is defined for |

## JSON Example

```json
{
    "defaultValue": "Test-Default",
    "exportMissingReferences": false,
    "flowBehavior": "FlowWhenChanged",
    "flowType": "Always",
    "matchingPriority": 0,
    "source": {
        "expression": "[mail]",
        "name": "mail",
        "parameters": [],
        "type": "Attribute"
    },
    "targetAttributeName": "Email"
}
```