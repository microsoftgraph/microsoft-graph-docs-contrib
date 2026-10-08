---
title: "billingMetrics resource type"
description: "Represents billing account connection metrics showing commerce relationships between two related tenants."
author: "akhil-potturi"
ms.date: 03/10/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# billingMetrics resource type

Namespace: microsoft.graph

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
|initial|[microsoft.graph.billingMetricsInitial](../resources/tenantgovernanceservices-billingmetricsinitial.md)|Billing metrics corresponding to initial snapshots where metrics were aggregated for the first time.|
|investigationHints|[microsoft.graph.investigationActionStep](../resources/tenantgovernanceservices-investigationactionstep.md) collection|Ordered drill-in guidance for investigating billing relationship counts. This collection is returned only when explicitly requested by using a nested `$expand` query parameter, for example `$expand=billingMetrics($expand=investigationHints)`.|
|recent|[microsoft.graph.billingMetricsRecent](../resources/tenantgovernanceservices-billingmetricsrecent.md)|Billing metrics corresponding to recent snapshots where metrics were found to have sufficiently changed.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.billingMetrics",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.billingMetrics",
  "id": "String (identifier)"
}
```
