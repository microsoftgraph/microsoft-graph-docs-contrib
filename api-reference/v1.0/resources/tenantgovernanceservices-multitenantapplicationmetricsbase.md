---
title: "multiTenantApplicationMetricsBase resource type"
description: "Abstract base type for multi-tenant application metrics."
author: "akhil-potturi"
ms.date: 08/13/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# multiTenantApplicationMetricsBase resource type

Namespace: microsoft.graph

This resource is an abstract base type and does not appear directly in API responses. Use the concrete types [multiTenantApplicationMetricsInitial](tenantgovernanceservices-multitenantapplicationmetricsinitial.md) or [multiTenantApplicationMetricsRecent](tenantgovernanceservices-multitenantapplicationmetricsrecent.md).

Abstract base type that defines common properties for multi-tenant application metrics.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
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
  "@odata.type": "microsoft.graph.multiTenantApplicationMetricsBase",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.multiTenantApplicationMetricsBase",
  "watermarkDateTime": "String (timestamp)",
  "inboundMonthlyTotalApplications": "String",
  "outboundMonthlyTotalApplications": "String"
}
```
