---
title: "originTenantInfo resource type"
description: "Information about the origin tenant of a user."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "people"
author: "bayram53"
ms.date: 07/24/2025
---

# originTenantInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents identifiers of a tenant and a user. It is used to represent identifiers in the origin tenant when a user is invited as a guest user.


## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| originTenantId | String | The identifier of the tenant where the user account was originally provisioned. |
| originUserId | String | The identifier of the user in the origin tenant. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.originTenantInfo"
}
-->
```json
{
  "originTenantId": "string",
  "originUserId": "string"
}
```
