---
title: "groupMembers resource type"
description: "Identifies a collection of users in the tenant who are allowed as requestor, approver, or reviewer."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 10/04/2024
---

# groupMembers resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used in the request, approval, and assignment review settings of an [access package assignment policy](accesspackageassignmentpolicy.md). 
The `@odata.type` value `#microsoft.graph.groupMembers` indicates that this type identifies a collection of users in the tenant who are allowed as requestor, approver, or reviewer, who are the members of a specific group.

## Properties

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| id |String | The ID of the group in Microsoft Entra ID. |
| description |String | The name of the group in Microsoft Entra ID. Read only. |
| isBackup | Boolean | For **groupMembers** in an approval stage, this property indicates that the group members are a backup fallback approver. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.groupMembers",
  "baseType": "microsoft.graph.userSet"
}-->

```json
{
  "id": "String (identifier)",
  "description": "String",
  "isBackup": false
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
