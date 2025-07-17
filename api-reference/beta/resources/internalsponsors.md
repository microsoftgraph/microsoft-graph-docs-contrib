---
title: "internalSponsors resource type"
description: "Identifies a relationship to another user in the tenant who can approve."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 10/04/2024
---

# internalSponsors resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used in the approval stage of an [access package assignment policy](accesspackageassignmentpolicy.md). 
It's a subtype of [userSet](userset.md), in which the `@odata.type` value `#microsoft.graph.internalSponsors` indicates that a requesting user's connected organization internal sponsors are to be the approver. This approver is only applicable to requests from users who are part of a connected organization.  When creating an access package assignment policy approval stage with internalSponsors, also include another approver, such as a single user or group member, in case the connected organization doesn't have an internal sponsor.

## Properties

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| isBackup | Boolean | Indicates whether the sponsor is a backup fallback approver. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.internalSponsors",
  "baseType": "microsoft.graph.userSet"
}-->

```json
{
  "@odata.type": "#microsoft.graph.internalSponsors",
  "isBackup": false
}
```


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "internalSponsor complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


