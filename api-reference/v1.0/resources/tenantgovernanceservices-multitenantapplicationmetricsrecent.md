---
title: "multiTenantApplicationMetricsRecent resource type"
description: "Represents the most recent snapshot of multi-tenant application metrics."
author: "akhil-potturi"
ms.date: 08/13/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# multiTenantApplicationMetricsRecent resource type

Namespace: microsoft.graph

Represents the most recent snapshot of multi-tenant application metrics, showing current application usage across [related tenants](../resources/tenantgovernanceservices-relatedtenant.md).

Inherits from [microsoft.graph.multiTenantApplicationMetricsBase](../resources/tenantgovernanceservices-multitenantapplicationmetricsbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|inboundMonthlyTotalApplications|String|The total number of inbound multi-tenant applications in the last month. Inherited from [microsoft.graph.multiTenantApplicationMetricsBase](../resources/tenantgovernanceservices-multitenantapplicationmetricsbase.md).|
|outboundMonthlyTotalApplications|String|The total number of outbound multi-tenant applications in the last month. Inherited from [microsoft.graph.multiTenantApplicationMetricsBase](../resources/tenantgovernanceservices-multitenantapplicationmetricsbase.md).|
|updateDateTime|DateTimeOffset|Timestamp that represents when multitenant application metrics are aggregated and have sufficiently changed for the related tenant.|
|watermarkDateTime|DateTimeOffset|The date and time when the metrics snapshot was taken. Inherited from [microsoft.graph.multiTenantApplicationMetricsBase](../resources/tenantgovernanceservices-multitenantapplicationmetricsbase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.multiTenantApplicationMetricsRecent",
  "baseType": "microsoft.graph.multiTenantApplicationMetricsBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.multiTenantApplicationMetricsRecent",
  "watermarkDateTime": "String (timestamp)",
  "inboundMonthlyTotalApplications": "String",
  "outboundMonthlyTotalApplications": "String",
  "updateDateTime": "String (timestamp)"
}
```
