---
title: "relatedTenantsRefreshStatus resource type"
description: "Represents the status of a related tenants refresh operation."
author: "akhil-potturi"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# relatedTenantsRefreshStatus resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the [status](../api/tenantgovernanceservices-relatedtenant-refreshstatus.md) of a [related tenants refresh operation](../api/tenantgovernanceservices-relatedtenant-refreshstatus.md), including the most recent refresh timestamp and current status of the operation.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|mostRecentRefreshTime|String|Timestamp of the respective refresh request.|
|mostRecentRefreshRequestStatus|String|The status of the refresh operation|
|isFirstRefresh|Boolean|Describes whether the related tenants refresh was the initial aggregation done by our service or not.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.relatedTenantsRefreshStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.relatedTenantsRefreshStatus",
  "mostRecentRefreshTime": "String",
  "mostRecentRefreshRequestStatus": "String",
  "isFirstRefresh": "Boolean"
}
```

