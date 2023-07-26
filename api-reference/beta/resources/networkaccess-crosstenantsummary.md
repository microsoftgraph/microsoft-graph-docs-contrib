---
title: "crossTenantSummary resource type"
description: "A summary for cross-tenant access counts for Microsoft 365 traffic."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# crossTenantSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A summary for cross-tenant access counts for Microsoft 365 traffic that's returned by the [getCrossTenantSummary](../api/networkaccess-reports-getcrosstenantsummary.md) method.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authTransactionCount|Int32|Total numbers of authentication sessions in the time frame between startDateTime and endDateTime.|
|deviceCount|Int32|Count of unique devices that performed cross-tenant access, in the time frame between startDateTime and endDateTime.|
|newTenantCount|Int32|Count of unique tenants that were accessed in the time frame between endDateTime to discoveryPivotDateTime, but haven't been accessed in the time frame between discoveryPivotDateTime to startDateTime.|
|tenantCount|Int32|Count of unique tenants that were accessed, that are different from the device's home tenant, in the time frame between startDateTime and endDateTime.|
|userCount|Int32|Count of unique users that performed cross-tenant access, in the time frame between startDateTime and endDateTime.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
  "deviceCount": "Integer"
}
```

