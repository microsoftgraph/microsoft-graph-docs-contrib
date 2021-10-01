---
title: "mediaStream resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# mediaStream resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|direction|mediaDirection|**TODO: Add Description**. The possible values are: `inactive`, `sendOnly`, `receiveOnly`, `sendReceive`.|
|label|String|**TODO: Add Description**|
|mediaType|modality|**TODO: Add Description**. The possible values are: `unknown`, `audio`, `video`, `videoBasedScreenSharing`, `data`, `unknownFutureValue`.|
|serverMuted|Boolean|**TODO: Add Description**|
|sourceId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mediaStream"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mediaStream",
  "direction": "String",
  "label": "String",
  "mediaType": "String",
  "serverMuted": "Boolean",
  "sourceId": "String"
}
```

