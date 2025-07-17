---
title: "attachmentItem resource type"
description: "Represents attributes of an item to be attached."
ms.localizationpriority: medium
author: "SuryaLashmiS"
ms.subservice: "outlook"
doc_type: "resourcePageType"
ms.date: 04/03/2024
---

# attachmentItem resource type

Namespace: microsoft.graph

Represents attributes of an item to be attached.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|attachmentType|String| The type of attachment. Possible values are: `file`, `item`, `reference`. Required.|
|contentId|String| The CID or Content-Id of the attachment for referencing for the in-line attachments using the `<img src="cid:contentId">` tag in HTML messages. Optional.|
|contentType|String|The nature of the data in the attachment. Optional.|
|isInline|Boolean|`true` if the attachment is an inline attachment; otherwise, `false`. Optional.|
|name|String|The display name of the attachment. This can be a descriptive string and doesn't have to be the actual file name. Required.|
|size|Int64|The length of the attachment in bytes. Required.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "contentId",
    "contentType",
    "isInline"
  ],
  "@odata.type": "microsoft.graph.attachmentItem",
  "baseType": null
}-->

```json
{
  "attachmentType": "String",
  "contentId": "String",
  "contentType": "String",
  "isInline": true,
  "name": "String",
  "size": 1024
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "attachmentItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
