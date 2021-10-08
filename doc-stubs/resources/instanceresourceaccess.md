---
title: "instanceResourceAccess resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# instanceResourceAccess resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|permissions|[resourcePermission](../resources/resourcepermission.md) collection|**TODO: Add Description**|
|resourceAppId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.instanceResourceAccess"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.instanceResourceAccess",
  "resourceAppId": "String",
  "permissions": [
    {
      "@odata.type": "microsoft.graph.resourcePermission"
    }
  ]
}
```

