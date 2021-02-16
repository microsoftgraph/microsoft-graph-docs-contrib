---
title: "redundancyDetectionSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# redundancyDetectionSettings resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|**TODO: Add Description**|
|maxWords|Int32|**TODO: Add Description**|
|minWords|Int32|**TODO: Add Description**|
|similarityThreshold|Int32|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.ediscovery.redundancyDetectionSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.redundancyDetectionSettings",
  "isEnabled": "Boolean",
  "similarityThreshold": "Integer",
  "minWords": "Integer",
  "maxWords": "Integer"
}
```

