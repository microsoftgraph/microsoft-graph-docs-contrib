---
title: "userSet resource type"
description: "The abstract base type for types used in the request, approval, and assignment review settings of an access package assignment policy."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# userSet resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used in the request, approval, and assignment review settings of an [access package assignment policy](accesspackageassignmentpolicy.md). The abstract base type for the [singleUser](singleuser.md),[groupMembers](groupmembers.md), [connectedOrganizationMembers](connectedorganizationmembers.md), [requestorManager](requestormanager.md), [internalSponsors](internalsponsors.md), and [externalSponsors](externalsponsors.md) types.

## Properties

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| @odata.type | String | The value as specified in one of the types below. |
| isBackup | Boolean | For a user in an approval stage, this property indicates whether the user is a backup fallback approver. |

## JSON representation

The following is a JSON representation of the groupMembers, a subtype of userSet, from the requestor settings property of a policy, which allows the members of a group to request.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.userSet",
  "baseType": ""
}-->

```json
{
     "@odata.type": "#microsoft.graph.groupMembers",
     "isBackup": false,
     "id": "string (identifier)",
     "description": "Authorized requestors"
}
```


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "userSet complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
