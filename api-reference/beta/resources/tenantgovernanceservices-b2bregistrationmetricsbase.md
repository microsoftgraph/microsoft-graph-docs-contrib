---
title: "b2BRegistrationMetricsBase resource type"
description: "Abstract base type for B2B registration metrics."
author: "akhil-potturi"
ms.date: 03/16/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# b2BRegistrationMetricsBase resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource is an abstract base type and does not appear directly in API responses. Use the concrete types [b2BRegistrationMetricsInitial](tenantgovernanceservices-b2bregistrationmetricsinitial.md) or [b2BRegistrationMetricsRecent](tenantgovernanceservices-b2bregistrationmetricsrecent.md).

Abstract base type that defines common properties for B2B registration metrics snapshots.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| id | String | Unique identifier for the metrics snapshot. Inherited from [microsoft.graph.entity](../resources/entity.md). |
| inboundTotalUsers | String | The total number of inbound B2B guest users registered. |
| outboundTotalUsers | String | The total number of outbound B2B users from this tenant registered in other tenants. |
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
  "@odata.type": "microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsBase",
  "id": "String (identifier)",
  "watermarkDateTime": "String (timestamp)",
  "inboundTotalUsers": "String",
  "outboundTotalUsers": "String"
}
```
