---
title: "multiTenantApplicationMetricsInitial resource type"
description: "Represents the initial snapshot of multi-tenant application metrics when the relationship was first discovered."
author: "akhil-potturi"
ms.date: 08/13/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# multiTenantApplicationMetricsInitial resource type

Namespace: microsoft.graph

Represents the initial snapshot of multi-tenant application metrics captured when the [related tenant](../resources/tenantgovernanceservices-relatedtenant.md) was first discovered, establishing a baseline for application usage across tenant boundaries.

Inherits from [microsoft.graph.multiTenantApplicationMetricsBase](../resources/tenantgovernanceservices-multitenantapplicationmetricsbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Timestamp that represents when multitenant application metrics are initially aggregated for the related tenant.|
|inboundMonthlyTotalApplications|String|The total number of inbound multi-tenant applications in the last month. Inherited from [microsoft.graph.multiTenantApplicationMetricsBase](../resources/tenantgovernanceservices-multitenantapplicationmetricsbase.md).|
|outboundMonthlyTotalApplications|String|The total number of outbound multi-tenant applications in the last month. Inherited from [microsoft.graph.multiTenantApplicationMetricsBase](../resources/tenantgovernanceservices-multitenantapplicationmetricsbase.md).|
|watermarkDateTime|DateTimeOffset|The date and time when the metrics snapshot was taken. Inherited from [microsoft.graph.multiTenantApplicationMetricsBase](../resources/tenantgovernanceservices-multitenantapplicationmetricsbase.md).|
## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.multiTenantApplicationMetricsInitial",
  "baseType": "microsoft.graph.multiTenantApplicationMetricsBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.multiTenantApplicationMetricsInitial",
  "watermarkDateTime": "String (timestamp)",
  "inboundMonthlyTotalApplications": "String",
  "outboundMonthlyTotalApplications": "String",
  "createdDateTime": "String (timestamp)"
}
```
