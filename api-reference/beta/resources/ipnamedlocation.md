---
title: "ipNamedLocation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# ipNamedLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [namedLocation](../resources/namedlocation.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/ipnamedlocation-list.md)|[ipNamedLocation](../resources/ipnamedlocation.md) collection|Get a list of the ipNamedLocation objects and their properties.|
|[Get](../api/ipnamedlocation-get.md)|[ipNamedLocation](../resources/ipnamedlocation.md)|Read the properties and relationships of [ipNamedLocation](../resources/ipnamedlocation.md) object.|
|[Update](../api/ipnamedlocation-update.md)|[ipNamedLocation](../resources/ipnamedlocation.md)|Update the properties of an ipNamedLocation object.|
|[Delete](../api/ipnamedlocation-delete.md)|None|Delete an ipNamedLocation object.|
|[restore](../api/ipnamedlocation-restore.md)|[namedLocation](../resources/namedlocation.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [namedLocation](../resources/namedlocation.md).|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [policyDeletableItem](../resources/policydeletableitem.md).|
|displayName|String|**TODO: Add Description** Inherited from [namedLocation](../resources/namedlocation.md).|
|id|String|**TODO: Add Description** Inherited from [namedLocation](../resources/namedlocation.md). Inherits from [entity](../resources/entity.md)|
|ipRanges|[ipRange](../resources/intune-iprange.md) collection|**TODO: Add Description**|
|isTrusted|Boolean|**TODO: Add Description**|
|modifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [namedLocation](../resources/namedlocation.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ipNamedLocation",
  "baseType": "microsoft.graph.namedLocation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ipNamedLocation",
  "deletedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "ipRanges": [
    {
      "@odata.type": "microsoft.graph.iPv6Range"
    }
  ],
  "isTrusted": "Boolean"
}
```

