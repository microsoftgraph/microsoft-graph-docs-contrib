---
title: "crossTenantSummary resource type"
description: "A summary for cross-tenant access counts for Microsoft 365 traffic."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# crossTenantSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A summary for cross-tenant access counts for Microsoft 365 traffic.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authTransactionCount|Int32|The total number of authentication sessions between startDateTime and endDateTime.	|
|deviceCount|Int32|The number of unique devices that performed cross-tenant access.	|
|newTenantCount|Int32|The number of unique tenants that were accessed between endDateTime and discoveryPivotDateTime, but weren't accessed between discoveryPivotDateTime and startDateTime.|
|rarelyUsedTenantCount|Int32|The number of tenants that are rarely used.|
|tenantCount|Int32|The number of unique tenants that were accessed, not including the device's tenant.|
|userCount|Int32|The number of unique users that performed cross-tenant access.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.crossTenantSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.crossTenantSummary",
  "authTransactionCount": "Integer",
  "tenantCount": "Integer",
  "newTenantCount": "Integer",
  "userCount": "Integer",
  "deviceCount": "Integer",
  "rarelyUsedTenantCount": "Integer"
}
```

