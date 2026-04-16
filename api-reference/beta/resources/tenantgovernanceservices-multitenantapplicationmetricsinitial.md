---
title: "multiTenantApplicationMetricsInitial resource type"
description: "Represents the initial snapshot of multi-tenant application metrics when the relationship was first discovered."
author: "akhil-potturi"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# multiTenantApplicationMetricsInitial resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the initial snapshot of multi-tenant application metrics captured when the [related tenant](../resources/tenantgovernanceservices-relatedtenant.md) was first discovered, establishing a baseline for application usage across tenant boundaries.

Inherits from [microsoft.graph.tenantGovernanceServices.multiTenantApplicationMetricsBase](../resources/tenantgovernanceservices-multitenantapplicationmetricsbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Timestamp that represents when multitenant application metrics are initially aggregated for the related tenant.|
|id|String|Unique identifier for the metrics snapshot. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|inboundMonthlyTotalApplications|String|The total number of inbound multi-tenant applications in the last month. Inherited from [microsoft.graph.tenantGovernanceServices.multiTenantApplicationMetricsBase](../resources/tenantgovernanceservices-multitenantapplicationmetricsbase.md).|
|outboundMonthlyTotalApplications|String|The total number of outbound multi-tenant applications in the last month. Inherited from [microsoft.graph.tenantGovernanceServices.multiTenantApplicationMetricsBase](../resources/tenantgovernanceservices-multitenantapplicationmetricsbase.md).|
|watermarkDateTime|DateTimeOffset|The date and time when the metrics snapshot was taken. Inherited from [microsoft.graph.tenantGovernanceServices.multiTenantApplicationMetricsBase](../resources/tenantgovernanceservices-multitenantapplicationmetricsbase.md).|
## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.multiTenantApplicationMetricsInitial",
  "baseType": "microsoft.graph.tenantGovernanceServices.multiTenantApplicationMetricsBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.multiTenantApplicationMetricsInitial",
  "id": "String (identifier)",
  "watermarkDateTime": "String (timestamp)",
  "inboundMonthlyTotalApplications": "String",
  "outboundMonthlyTotalApplications": "String",
  "createdDateTime": "String (timestamp)"
}
```

