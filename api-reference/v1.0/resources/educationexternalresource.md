---
title: "educationExternalResource resource type"
description: "A subclass of educationResource. This is the default Resource type assignments service use to map all those resources we don't expose to graph. This allows all SDK callers to work seamlessly."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 08/08/2024
---

# educationExternalResource resource type

Namespace: microsoft.graph

Represents a generic type to map resources not exposed in Microsoft Graph.

Inherits from [educationResource](educationresource.md).

This complex type allows all SDK callers to work seamlessly.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdBy|String|The display name of the user that created this object.|
|createdDateTime|DateTimeOffset|Date time the resoruce was added.|
|displayName|string|The display name of the resource.|
|lastModifiedBy|[identitySet](identityset.md)|The last user to modify the resource.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|webUrl|String|Location of the resource. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.educationExternalResource"
}-->

```json
{
  "createdBy": "String (User)",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "lastModifiedBy": "String (User)",
  "lastModifiedDateTime": "String (timestamp)",
  "webUrl": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2021-09-21 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationExternalResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
