---
title: "provisioningSystem resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# provisioningSystem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [identity](../resources/identity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|details|[detailsInfo](../resources/detailsinfo.md)|**TODO: Add Description**|
|displayName|String|**TODO: Add Description** Inherited from [identity](../resources/identity.md).|
|id|String|**TODO: Add Description** Inherited from [identity](../resources/identity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.provisioningSystem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.provisioningSystem",
  "id": "String (identifier)",
  "displayName": "String",
  "details": {
    "@odata.type": "microsoft.graph.detailsInfo"
  }
}
```

