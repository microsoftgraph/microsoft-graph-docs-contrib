---
title: "aiInteractionAttachment resource type"
description: "Represents a message attachment, such as cards and images."
ms.date: 11/18/2024
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
toc.title: "AI interaction attachment"
---

# aiInteractionAttachment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a message attachment, such as cards and images.

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| attachmentId | String | The identifier for the attachment. This identifier is only unique within the message scope. |
| content | String | The content of the attachment. |
| contentType | String | The type of the content. For example, `reference`, `file`, and `image/imageType`. |
| contentUrl | String | The URL of the content. |
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
  "content": "String",
  "contentType": "String",
  "contentUrl": "String",
  "name": "String"
}
```

