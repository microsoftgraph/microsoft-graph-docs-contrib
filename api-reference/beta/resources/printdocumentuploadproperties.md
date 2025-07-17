---
author: nilakhan
description: "Represents information for print document upload"
title: "printDocumentUploadProperties resource type"
ms.localizationpriority: medium
doc_type: "resourcePageType"
ms.subservice: universal-print
ms.date: 07/23/2024
---
# printDocumentUploadProperties resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the document that is being uploaded

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| contentType | String    | The document's content (MIME) type.|
| documentName | String | The document's name.|
| size          | Int64            | The document's size in bytes.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [  ],
  "@odata.type": "microsoft.graph.printDocumentUploadProperties",
  "baseType": null
}-->

```json
{
  "contentType": "String",
  "documentName": "String",
  "size": "Int64",
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "printDocumentUploadProperties",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
