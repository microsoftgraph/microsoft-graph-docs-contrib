---
title: "b2BSignInActivityMetrics resource type"
description: "Represents B2B sign-in activity metrics showing guest user authentication between two related tenants."
author: "akhil-potturi"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# b2BSignInActivityMetrics resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents B2B sign-in activity metrics that track monthly active guest users and applications accessed between the calling tenant and a [related tenant](../resources/tenantgovernanceservices-relatedtenant.md). Includes both initial and recent snapshots with inbound and outbound activity counts.

Inherits from [b2BSignInActivityMetricsBase](../resources/tenantgovernanceservices-b2bsigninactivitymetricsbase.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
| id | String | Unique identifier for the metrics snapshot. Inherited from [microsoft.graph.entity](../resources/entity.md). |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|initial|[microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsInitial](../resources/tenantgovernanceservices-b2bsigninactivitymetricsinitial.md)|B2B sign-in activity metrics corresponding to initial snapshots where metrics were aggregated for the first time.|
|recent|[microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsRecent](../resources/tenantgovernanceservices-b2bsigninactivitymetricsrecent.md)|B2B sign-in activity metrics corresponding to recent snapshots where metrics were found to have sufficiently changed.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetrics",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetrics",
  "id": "String (identifier)"
}
```

