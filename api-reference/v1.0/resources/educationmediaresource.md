---
title: "educationMediaResource resource type"
description: "A subclass of educationResource. This is a media file resource."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: resourcePageType
---

# educationMediaResource resource type

Namespace: microsoft.graph

A subclass of [educationResource](educationresource.md). This is a media file resource. 
The file must be uploaded in the **fileResource** directory associated with the assignment or submission.

> The file types considered Media resources are `webm`, `mkv`, `avi`, `wmv`, `mp4`, `m4v`, `mpg`, `mpeg`, `m2v`, `jpg`, `png`, `gif`, `bmp`, `heic`, `jpeg`, `psd`, `mp3` and `m4a`.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|Name of the file with extension. Optional|
|fileUrl|String|Location of the file on shared point folder. Required|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
      "displayName"
  ],
  "@odata.type": "microsoft.graph.educationMediaResource"
}-->

```json
{
  "displayName": "String",
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


