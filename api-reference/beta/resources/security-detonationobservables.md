---
title: "detonationObservables resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# detonationObservables resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contactedIps|String collection|**TODO: Add Description**|
|contactedUrls|String collection|**TODO: Add Description**|
|droppedfiles|String collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.detonationObservables"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.detonationObservables",
  "droppedfiles": [
    "String"
  ],
  "contactedIps": [
    "String"
  ],
  "contactedUrls": [
    "String"
  ]
}
```

