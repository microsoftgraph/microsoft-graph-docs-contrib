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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Metadata for the given object.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|key|String|Possible values are: `PropertyNameAccountEnabled`, `PropertyNameSoftDeleted`, `IsSoftDeletionSupported`, `IsSynchronizeAllSupported`, `ConnectorDataStorageRequired`, `Extensions`, `LinkTypeName`. |
|value|String|Value of the metadata property.|

### Supported key value pairs
| Key	   |Value|
|:---------------|:----------|
|PropertyNameAccountEnabled| This is the name of the property for indicating the object is enabled. |
|PropertyNameSoftDeleted | This is the name of the property for indicating the object is soft-deleted.  |
|IsSoftDeletionSupported  |This flag indicates whether the object supports soft-deletion.  |
|IsSynchronizeAllSupported |This flag indicates whether the object supports SyncAll. |
|ConnectorDataStorageRequired |This flag indicates whether this object requires mapping storage. We need mapping storage for types that will be mapped, like User and Group. Some objects, such as CostCenter may be customer-defined so that the sync engine can lookup User.costCenter in a CostCenter table, but we will not store mappings for the CostCenter object type since it won't be directly exported.  |
|Extensions  |A JSON containing a list of attributes and values that extends the base object this object inherits from.  |
|BaseObjectName |If this object inherits another object, this is the name of the base object being inherited from.  |

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


