---
title: "billingMetrics resource type"
description: "Represents billing account connection metrics showing commerce relationships between two related tenants."
author: "akhil-potturi"
ms.date: 08/13/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# billingMetrics resource type

Namespace: microsoft.graph

Represents billing metrics that show commerce and billing account connections between the calling tenant and a [related tenant](../resources/tenantgovernanceservices-relatedtenant.md). Tracks associated billing relationships where one tenant manages billing or provisioning for another tenant's subscriptions. Includes both initial and recent snapshots with local (calling tenant as primary billing tenant) and foreign (related tenant as primary billing tenant) connection counts.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|initial|[microsoft.graph.billingMetricsInitial](../resources/tenantgovernanceservices-billingmetricsinitial.md)|Billing metrics corresponding to initial snapshots where metrics were aggregated for the first time.|
|recent|[microsoft.graph.billingMetricsRecent](../resources/tenantgovernanceservices-billingmetricsrecent.md)|Billing metrics corresponding to recent snapshots where metrics were found to have sufficiently changed.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.billingMetrics",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.billingMetrics"
}
```
