---
title: "detonationChain resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# detonationChain resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|childNodes|[microsoft.graph.security.detonationChain](../resources/security-detonationchain.md) collection|**TODO: Add Description**|
|value|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.detonationChain"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.detonationChain",
  "value": "String",
  "childNodes": [
    {
      "@odata.type": "microsoft.graph.security.detonationChain"
    }
  ]
}
```

