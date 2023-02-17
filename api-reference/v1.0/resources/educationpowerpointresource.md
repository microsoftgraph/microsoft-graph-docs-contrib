---
title: "educationPowerPointResource resource type"
description: "A subclass of educationResource."
ms.localizationpriority: medium
author: "mmast-msft"
ms.prod: "education"
doc_type: resourcePageType
---

# educationPowerPointResource resource type

Namespace: microsoft.graph

A subclass of [educationResource](educationresource.md). 

This is a PowerPoint resource. The PowerPoint file must be uploaded in the **fileResource** directory associated with the 
assignment or submission.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdBy|String|The display name of the user that created this object.|
|createdDateTime|DateTimeOffset|Date time the resoruce was added.|
|displayName|string|The display name of the resource.|
|fileUrl|String|Location of the file on disk.|
|lastModifiedBy|[identitySet](identityset.md)|The last user to modify the resource.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationPowerPointResource"
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
  "description": "educationPowerPointResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


