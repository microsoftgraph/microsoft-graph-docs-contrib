---
title: "b2bRegistrationMetrics resource type"
description: "Represents B2B collaboration guest registration metrics between two related tenants."
author: "akhil-potturi"
ms.date: 08/13/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# b2bRegistrationMetrics resource type

Namespace: microsoft.graph

Represents B2B collaboration metrics that track guest registrations between the calling tenant and a [related tenant](../resources/tenantgovernanceservices-relatedtenant.md). Includes both initial and recent snapshots showing inbound and outbound guest counts.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|initial|[microsoft.graph.b2BRegistrationMetricsInitial](../resources/tenantgovernanceservices-b2bregistrationmetricsinitial.md)|B2B registration metrics corresponding to initial snapshots where metrics were aggregated for the first time.|
|recent|[microsoft.graph.b2BRegistrationMetricsRecent](../resources/tenantgovernanceservices-b2bregistrationmetricsrecent.md)|B2B registration metrics corresponding to recent snapshots where metrics were found to have sufficiently changed.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.b2bRegistrationMetrics",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.b2bRegistrationMetrics"
}
```
