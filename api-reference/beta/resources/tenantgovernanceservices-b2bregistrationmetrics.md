---
title: "b2bRegistrationMetrics resource type"
description: "Represents B2B collaboration guest registration metrics between two related tenants."
author: "akhil-potturi"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# b2bRegistrationMetrics resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents B2B collaboration metrics that track guest registrations between the calling tenant and a [related tenant](../resources/tenantgovernanceservices-relatedtenant.md). Includes both initial and recent snapshots showing inbound and outbound guest counts.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
| id | String | Unique identifier for the metrics snapshot. Inherited from [microsoft.graph.entity](../resources/entity.md). |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|initial|[microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsInitial](../resources/tenantgovernanceservices-b2bregistrationmetricsinitial.md)|B2B registration metrics corresponding to initial snapshots where metrics were aggregated for the first time.|
|recent|[microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsRecent](../resources/tenantgovernanceservices-b2bregistrationmetricsrecent.md)|B2B registration metrics corresponding to recent snapshots where metrics were found to have sufficiently changed.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.b2bRegistrationMetrics",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.b2bRegistrationMetrics",
  "id": "String (identifier)"
}
```

