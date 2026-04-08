---
title: "multiTenantApplicationMetrics resource type"
description: "Represents multi-tenant application usage metrics between two related tenants."
author: "akhil-potturi"
ms.date: 03/19/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# multiTenantApplicationMetrics resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents multi-tenant application usage metrics that track the number of applications used across tenant boundaries. Includes both initial and recent snapshots showing monthly counts of inbound and outbound multi-tenant application usage associated with [related tenants](../resources/tenantgovernanceservices-relatedtenant.md).

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
| id | String | Unique identifier for the metrics snapshot. Inherited from [microsoft.graph.entity](../resources/entity.md). |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|initial|[microsoft.graph.tenantGovernanceServices.multiTenantApplicationMetricsInitial](../resources/tenantgovernanceservices-multitenantapplicationmetricsinitial.md)|Multitenant application metrics corresponding to initial snapshots where metrics were aggregated for the first time.|
|recent|[microsoft.graph.tenantGovernanceServices.multiTenantApplicationMetricsRecent](../resources/tenantgovernanceservices-multitenantapplicationmetricsrecent.md)|Multitenant application metrics corresponding to recent snapshots where metrics were found to have sufficiently changed.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.multiTenantApplicationMetrics",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.multiTenantApplicationMetrics",
  "id": "String (identifier)"
}
```

