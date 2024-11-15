---
title: "aiInteractionAttachment resource type"
description: "Represents message attachment like cards, images etc."
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
---

# aiInteractionAttachment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents message attachment like cards, images etc.

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| attachmentId | String | The identifier for the attachment. This is unique in scope of message only. |
| contentType | String | The type of the content. This can be something like reference, file, image/imageType etc. |
| contentUrl | String | The URL of the content. |
| content | String | The content itself. |
| name | String | The name of the attachment. |

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.aiInteractionAttachment"
}-->

```json
{
  "attachmentId": "String",
  "contentType": "String",
  "contentUrl": "String",
  "content": "String",
  "name": "String"
}
```

