--- 
title: "addLargeGalleryViewOperation resource type"
description: "Describes the response format for an operation that adds the large gallery view."
author: "navali-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 05/24/2024
---

# addLargeGalleryViewOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the response format for an operation that adds the large gallery view.

Inherits from [commsOperation](commsoperation.md).

## Methods

|Method|Return Type|Description|
|:-----|:----------|:----------|
|[Get large gallery view operation status](../api/addlargegalleryviewoperation-get.md)|[addLargeGalleryViewOperation](addlargegalleryviewoperation.md)|Get the status of an operation that adds the large gallery view to a call.|

## Properties

|Property|Type|Description|
|:-------|:---|:----------|
|clientContext|String|The client context.|
|id|String|The ID of the server operation. Read-only.|
|resultInfo|[resultInfo](resultinfo.md)|The result information. Read-only.|
|status|operationStatus|The status of the operation. The possible values are: `notStarted`, `running`, `completed`, `failed`. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.addLargeGalleryViewOperation"
}-->
```json
{
  "clientContext": "String",
  "id": "String (identifier)",
  "resultInfo": {"@odata.type": "#microsoft.graph.resultInfo"},
  "status": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "addLargeGalleryViewOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


