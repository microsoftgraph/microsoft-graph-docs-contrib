---
title: "multiTenantApplicationMetricsBase resource type"
description: "Abstract base type for multi-tenant application metrics."
author: "akhil-potturi"
ms.date: 03/19/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# multiTenantApplicationMetricsBase resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource is an abstract base type and does not appear directly in API responses. Use the concrete types [multiTenantApplicationMetricsInitial](tenantgovernanceservices-multitenantapplicationmetricsinitial.md) or [multiTenantApplicationMetricsRecent](tenantgovernanceservices-multitenantapplicationmetricsrecent.md).

Abstract base type that defines common properties for multi-tenant application metrics.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| id | String | Unique identifier for the metrics snapshot. Inherited from [microsoft.graph.entity](../resources/entity.md). |
| inboundMonthlyTotalApplications | String | The total number of inbound multi-tenant applications in the last month. |
| outboundMonthlyTotalApplications | String | The total number of outbound multi-tenant applications in the last month. |
| watermarkDateTime | DateTimeOffset | The date and time when the metrics snapshot was taken. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

> [!NOTE]
> This abstract type is not returned in API responses. See concrete implementations.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.multiTenantApplicationMetricsBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.multiTenantApplicationMetricsBase",
  "id": "String (identifier)",
  "watermarkDateTime": "String (timestamp)",
  "inboundMonthlyTotalApplications": "String",
  "outboundMonthlyTotalApplications": "String"
}
```
