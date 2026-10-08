---
title: "b2BRegistrationMetricsBase resource type"
description: "Abstract base type for B2B registration metrics."
author: "akhil-potturi"
ms.date: 08/13/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# b2BRegistrationMetricsBase resource type

Namespace: microsoft.graph

This resource is an abstract base type and does not appear directly in API responses. Use the concrete types [b2BRegistrationMetricsInitial](tenantgovernanceservices-b2bregistrationmetricsinitial.md) or [b2BRegistrationMetricsRecent](tenantgovernanceservices-b2bregistrationmetricsrecent.md).

Abstract base type that defines common properties for B2B registration metrics snapshots.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
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
  "@odata.type": "microsoft.graph.b2BRegistrationMetricsBase",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.b2BRegistrationMetricsBase",
  "watermarkDateTime": "String (timestamp)",
  "inboundTotalUsers": "String",
  "outboundTotalUsers": "String"
}
```
