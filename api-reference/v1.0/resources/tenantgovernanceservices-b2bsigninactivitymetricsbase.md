---
title: "b2BSignInActivityMetricsBase resource type"
description: "Abstract base type for B2B sign-in activity metrics."
author: "akhil-potturi"
ms.date: 08/13/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# b2BSignInActivityMetricsBase resource type

Namespace: microsoft.graph

This resource is an abstract base type and does not appear directly in API responses. Use the concrete types [b2BSignInActivityMetricsInitial](tenantgovernanceservices-b2bsigninactivitymetricsinitial.md) or [b2BSignInActivityMetricsRecent](tenantgovernanceservices-b2bsigninactivitymetricsrecent.md).

Abstract base type that defines common properties for B2B sign-in activity metrics.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| inboundMonthlyTotalApplications | String | The total number of applications accessed by inbound users in the last month. |
| inboundMonthlyTotalUsers | String | The total number of unique inbound users with sign-in activity in the last month. |
| outboundMonthlyTotalApplications | String | The total number of applications accessed by outbound users in the last month. |
| outboundMonthlyTotalUsers | String | The total number of unique outbound users with sign-in activity in the last month. |
| watermarkDateTime | DateTimeOffset | The date and time when the metrics snapshot was taken. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

> [!NOTE]
> This abstract type is not returned in API responses. See concrete implementations.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.b2BSignInActivityMetricsBase",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.b2BSignInActivityMetricsBase",
  "watermarkDateTime": "String (timestamp)",
  "inboundMonthlyTotalUsers": "String",
  "inboundMonthlyTotalApplications": "String",
  "outboundMonthlyTotalUsers": "String",
  "outboundMonthlyTotalApplications": "String"
}
```
