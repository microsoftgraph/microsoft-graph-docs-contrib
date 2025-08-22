---
title: "privateLinkNamedLocation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# privateLinkNamedLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [namedLocation](../resources/namedlocation.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/privatelinknamedlocation-list.md)|[privateLinkNamedLocation](../resources/privatelinknamedlocation.md) collection|Get a list of the privateLinkNamedLocation objects and their properties.|
|[Get](../api/privatelinknamedlocation-get.md)|[privateLinkNamedLocation](../resources/privatelinknamedlocation.md)|Read the properties and relationships of [privateLinkNamedLocation](../resources/privatelinknamedlocation.md) object.|
|[Update](../api/privatelinknamedlocation-update.md)|[privateLinkNamedLocation](../resources/privatelinknamedlocation.md)|Update the properties of a privateLinkNamedLocation object.|
|[Delete](../api/privatelinknamedlocation-delete.md)|None|Delete a privateLinkNamedLocation object.|
|[restore](../api/privatelinknamedlocation-restore.md)|[namedLocation](../resources/namedlocation.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [namedLocation](../resources/namedlocation.md).|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [policyDeletableItem](../resources/policydeletableitem.md).|
|displayName|String|**TODO: Add Description** Inherited from [namedLocation](../resources/namedlocation.md).|
|id|String|**TODO: Add Description** Inherited from [namedLocation](../resources/namedlocation.md). Inherits from [entity](../resources/entity.md)|
|isTrusted|Boolean|**TODO: Add Description**|
|modifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [namedLocation](../resources/namedlocation.md).|
|privateLinkResourcePolicyIds|String collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privateLinkNamedLocation",
  "baseType": "microsoft.graph.namedLocation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privateLinkNamedLocation",
  "deletedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "privateLinkResourcePolicyIds": [
    "String"
  ],
  "isTrusted": "Boolean"
}
```

