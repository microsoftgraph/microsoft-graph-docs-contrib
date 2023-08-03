---
title: "educationChannelResource resource type"
description: "A subclass of educationResource that represents a Microsoft Teams channel in the class."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: resourcePageType
---

# educationChannelResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A subclass of [educationResource](educationresource.md) that represents a Microsoft Teams channel in the class. Only channels from the same class can be attached to the module.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdBy|String|The display name of the user that created this object.|
|createdDateTime|DateTimeOffset|Date time the resource was added.|
|displayName|string|The display name of the resource.|
|lastModifiedBy|[identitySet](identityset.md)|The last user to modify the resource.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|url|String|Url of the channel resource.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationChannelResource"
}-->

```json
{
  "createdBy": "String (User)",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "lastModifiedBy": "String (User)",
  "lastModifiedDateTime": "String (timestamp)",
  "url": "String"
}
```
