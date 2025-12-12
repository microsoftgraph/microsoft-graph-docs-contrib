---
title: "originTenantInfo resource type"
description: "Represents the identifiers of a tenant and a user that are used to identify them in the origin tenant when a user is invited as a guest."
author: "bayram53"
ms.date: 07/24/2025
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: resourcePageType
---

# originTenantInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identifiers of a tenant and a user that are used to identify them in the origin tenant when a user is invited as a guest.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
|originTenantId|String|The identifier of the tenant where the user account was originally provisioned.|
|originUserId|String|The identifier of the user in the origin tenant.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.originTenantInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.originTenantInfo",
  "originTenantId": "String",
  "originUserId": "String"
}
```
