---
title: "objectDefinitionMetadataEntry resource type"
description: "Metadata for the given object."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "applications"
---

# objectDefinitionMetadataEntry resource type

Namespace: microsoft.graph

Metadata for the given object.

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|key|objectDefinitionMetadata|Possible values are: `PropertyNameAccountEnabled`, `PropertyNameSoftDeleted`, `IsSoftDeletionSupported`, `IsSynchronizeAllSupported`, `ConnectorDataStorageRequired`, `Extensions`, `LinkTypeName`. |
|value|String|Value of the metadata property.|

### Supported key-value pairs
| Key       |Value|
|:---------------|:----------|
|PropertyNameAccountEnabled| Indicates that the object is enabled. |
|PropertyNameSoftDeleted | Indicates that the object is soft-deleted.  |
|IsSoftDeletionSupported  |Indicates whether the object supports soft deletion.  |
|IsSynchronizeAllSupported |Indicates whether the object supports `SyncAll`. |
|ConnectorDataStorageRequired |Indicates whether this object requires mapping storage. The service stores mapping for properties of types that will be mapped, like User and Group.  |
|Extensions  |A JSON containing a list of attributes and values that extends the base object that this object inherits from.  |
|BaseObjectName |If this object inherits another object, this is the name of the parent base object.  |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.objectDefinitionMetadataEntry"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.objectDefinitionMetadataEntry",
  "key": "String",
  "value": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "metadataEntry resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


