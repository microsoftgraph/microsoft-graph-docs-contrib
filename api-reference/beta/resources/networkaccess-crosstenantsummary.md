---
title: "crossTenantSummary resource type"
description: "A summary for cross tenant access counts for m365 traffic."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: resourcePageType
---

# crossTenantSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A summary for cross tenant access counts for m365 traffic.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authTransactionCount|Int32|Total numbers of auth session in the time frame between startDateTime and endDateTime.	|
|deviceCount|Int32|Unique device count that performed cross tenant access, in the time frame between startDateTime and endDateTime.	|
|newTenantCount|Int32|Unique tenant count that were accessed in the time frame between endDateTime to discoveryPivotDateTime, but havn't been accessed in the time frame between discoveryPivotDateTime to startDateTime.|
|tenantCount|Int32|Unique tenant count that were accessed, that are different than the device's tenant, in the time frame between startDateTime and endDateTime.|
|userCount|Int32|Unique user count that performed cross tenant access, in the time frame between startDateTime and endDateTime.|

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
  "deviceCount": "Integer",
  "rarelyUsedTenantCount": "Integer"
}
```

