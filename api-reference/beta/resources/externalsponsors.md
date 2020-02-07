---
title: "internalSponsors complex type"
description: "The internalSponsors type identifies a relationship to another user in the tenant who will be allowed as approver."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# internalSponsors complex type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The internalSponsors type, used in the approval stage of an [access package assignment policy](accesspackageassignmentpolicy.md), indicate that a requesting user's connected organization internal sponsor is to be the approver.  This approver is only applicable to requests from users who are part of a connected organization.

## Properties

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `@odata.type` | String | The value "`#microsoft.graph.internalSponsors`". |
| isBackup | Boolean | This property indicates that the sponsor is a backup fallback approver. |

## JSON representation

The following is a JSON representation of an internalSponsors.

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
