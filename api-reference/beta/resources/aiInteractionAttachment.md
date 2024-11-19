---
title: "aiInteractionAttachment resource type"
description: "Represents message attachment, such as like cards, images, and so on."
ms.date: 11/18/2024
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
---

# aiInteractionAttachment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents message attachment, such as like cards, images, and so on.

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| attachmentId | String | The identifier for the attachment. This identifier is only unique within the message scope. |
| contentType | String | The type of the content. For example, `reference`, `file`, `image/imageType`, and so on. |
| contentUrl | String | The URL of the content. |
| content | String | The content of the attachment. |
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

