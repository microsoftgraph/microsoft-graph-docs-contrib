---
title: "educationLinkResource resource type"
description: "A subclass of educationResource. This resource is a link and does not have any additional data associated with it."
author: "mmast-msft"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: resourcePageType
---

# educationLinkResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A subclass of [educationResource](educationresource.md). This resource is a link and does not have any additional data associated with it.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|link|String|URL to the resource.|
|createdBy|String|The display name of the user that created this object.|
|createdDateTime|DateTimeOffset|Date time the resoruce was added.|
|displayName|string|The display name of the resource.|
|lastModifiedBy|[identitySet](identityset.md)|The last user to modify the resource.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationLinkResource"
}-->

```json
{
  "link": "String",
  "createdBy": "String (User)",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "lastModifiedBy": "String (User)",
  "lastModifiedDateTime": "String (timestamp)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationLinkResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


