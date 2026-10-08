---
title: "multiTenantApplicationMetrics resource type"
description: "Represents multi-tenant application usage metrics between two related tenants."
author: "akhil-potturi"
ms.date: 08/13/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# multiTenantApplicationMetrics resource type

Namespace: microsoft.graph

Represents multi-tenant application usage metrics that track the number of applications used across tenant boundaries. Includes both initial and recent snapshots showing monthly counts of inbound and outbound multi-tenant application usage associated with [related tenants](../resources/tenantgovernanceservices-relatedtenant.md).

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|initial|[microsoft.graph.multiTenantApplicationMetricsInitial](../resources/tenantgovernanceservices-multitenantapplicationmetricsinitial.md)|Multitenant application metrics corresponding to initial snapshots where metrics were aggregated for the first time.|
|recent|[microsoft.graph.multiTenantApplicationMetricsRecent](../resources/tenantgovernanceservices-multitenantapplicationmetricsrecent.md)|Multitenant application metrics corresponding to recent snapshots where metrics were found to have sufficiently changed.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.multiTenantApplicationMetrics",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.multiTenantApplicationMetrics"
}
```
