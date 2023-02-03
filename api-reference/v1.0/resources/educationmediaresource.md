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

Represents a media file resource for an [educationAssignment](educationassignment.md). Inherits from [educationResource](educationresource.md).

Upload these files to the **fileResource** directory associated with the assignment or submission.

The following file types are media resources: `webm`, `mkv`, `avi`, `wmv`, `mp4`, `m4v`, `mpg`, `mpeg`, `m2v`, `jpg`, `png`, `gif`, `bmp`, `heic`, `jpeg`, `psd`, `mp3` and `m4a`.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdBy|String|The display name of the user that created this resource.|
|createdDateTime|DateTimeOffset|Date time the resoruce was added.|
|displayName|string|The display name of the user who added resource.|
|fileUrl|String|Location of the file on shared point folder. Required|
|lastModifiedBy|[identitySet](identityset.md)|The last user to modify the resource|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

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
  "createdBy": "String (User)",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "fileUrl": "String",
  "lastModifiedBy": "String (User)",
  "lastModifiedDateTime": "String (timestamp)"
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


