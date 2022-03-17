---
title: "educationMediaResource resource type"
description: "Represents a media file resource for an educationAssignment. Inherits from educationResource"
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: resourcePageType
---

# educationMediaResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a media file resource for an [educationAssignment](educationassignment.md). Inherits from [educationResource](educationresource.md).

Upload these files to the **fileResource** directory associated with the assignment or submission.

The following file types are media resources: `webm`, `mkv`, `avi`, `wmv`, `mp4`, `m4v`, `mpg`, `mpeg`, `m2v`, `jpg`, `png`, `gif`, `bmp`, `heic`, `jpeg`, `psd`, `mp3` and `m4a`.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|fileUrl|String|Location of the file on shared point folder. Required|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.educationMediaResource"
}-->

```json
{
  "fileUrl": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationMediaResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


