---
title: "connectedOrganizationMembers resource type"
description: "The connectedOrganizationMembers type identifies a collection of users in the tenant who are allowed as requestor, approver, or reviewer."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 10/04/2024
---

# connectedOrganizationMembers resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used in the request settings of an [access package assignment policy](accesspackageassignmentpolicy.md). The `@odata.type` value `#microsoft.graph.connectedOrganizationMembers` indicates that this type identifies a collection of users who are associated with a [connected organization](connectedorganization.md) and are allowed to request an access package.

## Properties

This type has the following properties:

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| id |String | The ID of the connected organization in entitlement management. |
| description |String | The name of the connected organization. Read only. |
| isBackup | Boolean | Not used now. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.connectedOrganizationMembers",
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
  "description": "connectedOrganizationMembers complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


