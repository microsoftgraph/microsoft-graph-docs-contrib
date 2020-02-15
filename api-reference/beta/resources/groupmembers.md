---
title: "groupMembers resource type"
description: "Identifies a collection of users in the tenant who will be allowed as requestor, approver, or reviewer."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# groupMembers resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used in the request, approval, and assignment review settings of an [access package assignment policy](accesspackageassignmentpolicy.md). Identifies a collection of users in the tenant who will be allowed as requestor, approver, or reviewer.  The users are members of a specific group.

## Properties

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `@odata.type` | String | The value "`#microsoft.graph.groupMembers`". |
| id |String | The ID of the group in Azure AD. |
| description |String | The name of the group in Azure AD. Read only. |
| isBackup | Boolean | For **groupMembers** in an approval stage, this property indicates that the group members are a backup fallback approver. |

## JSON representation

The following is a JSON representation of the **groupMembers** from the requestor settings property of a policy, which allows the members of a group to request.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.groupMembers",
  "baseType": "microsoft.graph.userSet"
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
  "description": "groupMembers complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
