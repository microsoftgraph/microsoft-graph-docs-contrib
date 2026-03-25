---
title: "billingMetrics resource type"
description: "Represents billing account connection metrics showing commerce relationships between two related tenants."
author: "akhil-potturi"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# billingMetrics resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents billing metrics that show commerce and billing account connections between the calling tenant and a [related tenant](../resources/tenantgovernanceservices-relatedtenant.md). Tracks associated billing relationships where one tenant manages billing or provisioning for another tenant's subscriptions. Includes both initial and recent snapshots with local (calling tenant as primary billing tenant) and foreign (related tenant as primary billing tenant) connection counts.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
| id | String | Unique identifier for the metrics snapshot. Inherited from [microsoft.graph.entity](../resources/entity.md). |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|initial|[microsoft.graph.tenantGovernanceServices.billingMetricsInitial](../resources/tenantgovernanceservices-billingmetricsinitial.md)|Billing metrics corresponding to initial snapshots where metrics were aggregated for the first time.|
|recent|[microsoft.graph.tenantGovernanceServices.billingMetricsRecent](../resources/tenantgovernanceservices-billingmetricsrecent.md)|Billing metrics corresponding to recent snapshots where metrics were found to have sufficiently changed.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.billingMetrics",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.billingMetrics",
  "id": "String (identifier)"
}
```

