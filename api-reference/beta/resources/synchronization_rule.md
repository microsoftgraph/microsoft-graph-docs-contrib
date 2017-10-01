# Synchronization rule

Synchronization rules are at the core of the synchronization configuration. They give synchronization engine crucial information regarding how the synchronization should be performed. That includes which objects should be synchronized, in which direction, how objects from source directory should be matched with objects in target directory, and how attributes should be transformed going from source to target.

**Synchronization rule defines synchronization in one direction**, from source directory to target directory. Source and target directories are designated as part of the rule properties.

Synchronization rules are updated as part of [synchronization schema](synchronization_schema.md)

## JSON representation

```json
{
    "editable": "Boolean",
    "id": "String (identifier)",
    "metadata": [{"@odata.type": "microsoft.graph.metadataEntry"}],
    "name": "String",
    "objectMappings": [{"@odata.type": "microsoft.graph.objectMapping"}],
    "priority": "Integer",
    "sourceDirectoryName": "String",
    "targetDirectoryName": "String"
}
```

## Properties

| Property      | Type      | Description    |
|:--------------|:----------|:---------------|
|editable       |Boolean    |`true` if synchronization rule can be customized. `false` means this rule is read only and should not be changed|
|id             |String     |Synchronization rule identifier. Must be one of the identifiers recognized by the synchronization engine. Supported rule identifiers can be seen in the synchronization template returned by the API|
|metadata       |metadataEntry collection    |Additional extension properties. Unless mentioned explicitly, metadata values should not be changed|
|name           |String     |Human-readable name of the synchronization rule. Not nullable|
|objectMappings |[objectMapping](synchronization_objectMapping.md) collection    |Collection of object mappings supported by the rule. Tells synchronization engine which objects should be synchronized|
|priority       |Integer    |Priority relative to other rules in the [schema](synchronization_schema.md). Rules with the lowest priority number will be processed first|
|sourceDirectoryName       |String    |Name of the source directory. Must match one of the directory definitions in [schema](synchronization_schema.md)|
|targetDirectoryName       |String    |Name of the target directory. Must match one of the directory definitions in [schema](synchronization_schema.md)|

## JSON Example

```json
{
    "editable": true,
    "id": "4c5ecfa1-a072-4460-b1c3-4adde3479854",
    "metadata": [
        {
            "key": "defaultSourceObjectMappings",
            "value": "..."
        }
    ],
    "name": "USER_OUTBOUND_USER",
    "objectMappings": [
        {
            "attributeMappings": [
                {
                    "defaultValue": "True",
                    "exportMissingReferences": false,
                    "flowBehavior": "FlowWhenChanged",
                    "flowType": "Always",
                    "matchingPriority": 0,
                    "source": {
                        "expression": "Not([IsSoftDeleted])",
                        "name": "Not",
                        "parameters": [
                            {
                                "key": "source",
                                "value": {
                                    "expression": "[IsSoftDeleted]",
                                    "name": "IsSoftDeleted",
                                    "parameters": [],
                                    "type": "Attribute"
                                }
                            }
                        ],
                        "type": "Function"
                    },
                    "targetAttributeName": "IsActive"
                },
                {
                    "defaultValue": null,
                    "exportMissingReferences": false,
                    "flowBehavior": "FlowWhenChanged",
                    "flowType": "Always",
                    "matchingPriority": 0,
                    "source": {
                        "expression": "[givenName]",
                        "name": "givenName",
                        "parameters": [],
                        "type": "Attribute"
                    },
                    "targetAttributeName": "FirstName"
                }
                {...}
            ],
            "enabled": true,
            "flowTypes": "Add, Update, Delete",
            "metadata": [
                {
                    "key": "Disposition",
                    "value": "\"Normal\""
                },
                {
                    "key": "Unsynchronized",
                    "value": "false"
                }
            ],
            "name": "Synchronize Azure Active Directory Users to salesforce.com",
            "scope": null,
            "sourceObjectName": "User",
            "targetObjectName": "User"
        }
    ],
    "priority": 1,
    "sourceDirectoryName": "Azure Active Directory",
    "targetDirectoryName": "salesforce.com"
}
```