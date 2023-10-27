---
title: "crossTenantSummary resource type"
description: "A summary for cross-tenant access counts for Microsoft 365 traffic."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: resourcePageType
---

# crossTenantSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A summary for cross-tenant access counts for Microsoft 365 traffic.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authTransactionCount|Int32|Total numbers of authentication sessions between startDateTime and endDateTime.	|
|deviceCount|Int32|Unique device count that performed cross-tenant access, between startDateTime and endDateTime.	|
|newTenantCount|Int32|Unique tenant count that were accessed between endDateTime and discoveryPivotDateTime, but haven't been accessed between discoveryPivotDateTime and startDateTime.|
|tenantCount|Int32|Unique tenant count that were accessed, that are different than the device's tenant, between startDateTime and endDateTime.|
|userCount|Int32|Unique user count that performed cross-tenant access, between startDateTime and endDateTime.|

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

