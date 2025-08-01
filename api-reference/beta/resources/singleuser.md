---
title: "singleUser resource type"
description: "Identifies a user in the tenant who will be allowed as requestor, approver, or reviewer."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 10/04/2024
---

# singleUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used in the request, approval, and assignment review settings of an [access package assignment policy](accesspackageassignmentpolicy.md). The  `@odata.type` value `#microsoft.graph.singleUser` indicates that this userSet identifies a specific user in the tenant who will be allowed as a requestor, approver, or reviewer.

## Properties

This type has the following properties:

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| id |String | The ID of the user in Microsoft Entra ID. |
| description |String | The name of the user in Microsoft Entra ID. Read only. |
| isBackup | Boolean | For a **singleUser** in an approval stage, indicates whether the user is a backup fallback approver. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.singleUser",
  "baseType": "microsoft.graph.userSet"
}-->

```json
{
  "isBackup": false,
  "id": "String (identifier)",
  "description": "String"
}
```


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "singleUser complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
