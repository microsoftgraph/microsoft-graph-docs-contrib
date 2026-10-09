---
title: "b2BSignInActivityMetrics resource type"
description: "Represents B2B sign-in activity metrics showing guest user authentication between two related tenants."
author: "akhil-potturi"
ms.date: 08/13/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# b2BSignInActivityMetrics resource type

Namespace: microsoft.graph

Represents B2B sign-in activity metrics that track monthly active guest users and applications accessed between the calling tenant and a [related tenant](../resources/tenantgovernanceservices-relatedtenant.md). Includes both initial and recent snapshots with inbound and outbound activity counts.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|initial|[microsoft.graph.b2BSignInActivityMetricsInitial](../resources/tenantgovernanceservices-b2bsigninactivitymetricsinitial.md)|B2B sign-in activity metrics corresponding to initial snapshots where metrics were aggregated for the first time.|
|recent|[microsoft.graph.b2BSignInActivityMetricsRecent](../resources/tenantgovernanceservices-b2bsigninactivitymetricsrecent.md)|B2B sign-in activity metrics corresponding to recent snapshots where metrics were found to have sufficiently changed.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.b2BSignInActivityMetrics",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.b2BSignInActivityMetrics"
}
```
