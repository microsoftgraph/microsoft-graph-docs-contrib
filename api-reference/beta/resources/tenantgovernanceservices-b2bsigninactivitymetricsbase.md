---
title: "b2BSignInActivityMetricsBase resource type"
description: "Abstract base type for B2B sign-in activity metrics."
author: "akhil-potturi"
ms.date: 03/19/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# b2BSignInActivityMetricsBase resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource is an abstract base type and does not appear directly in API responses. Use the concrete types [b2BSignInActivityMetricsInitial](tenantgovernanceservices-b2bsigninactivitymetricsinitial.md) or [b2BSignInActivityMetricsRecent](tenantgovernanceservices-b2bsigninactivitymetricsrecent.md).

Abstract base type that defines common properties for B2B sign-in activity metrics.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| id | String | Unique identifier for the metrics snapshot. Inherited from [microsoft.graph.entity](../resources/entity.md). |
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
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsBase",
  "id": "String (identifier)",
  "watermarkDateTime": "String (timestamp)",
  "inboundMonthlyTotalUsers": "String",
  "inboundMonthlyTotalApplications": "String",
  "outboundMonthlyTotalUsers": "String",
  "outboundMonthlyTotalApplications": "String"
}
```
