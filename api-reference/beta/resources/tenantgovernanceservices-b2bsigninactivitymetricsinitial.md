---
title: "b2BSignInActivityMetricsInitial resource type"
description: "Represents the initial snapshot of B2B sign-in activity metrics."
author: "akhil-potturi"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# b2BSignInActivityMetricsInitial resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the initial snapshot of B2B sign-in activity metrics captured when the [related tenant](../resources/tenantgovernanceservices-relatedtenant.md) was first discovered, establishing a baseline for monthly active guests and applications.

Inherits from [microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsBase](../resources/tenantgovernanceservices-b2bsigninactivitymetricsbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Timestamp that represents when the time B2B sign-in activity content was initially aggregated for the related tenant.|
|id|String|Unique identifier for the metrics snapshot. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|inboundMonthlyTotalApplications|String|The total number of applications accessed by inbound users in the last month. Inherited from [microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsBase](../resources/tenantgovernanceservices-b2bsigninactivitymetricsbase.md).|
|inboundMonthlyTotalUsers|String|The total number of unique inbound users with sign-in activity in the last month. Inherited from [microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsBase](../resources/tenantgovernanceservices-b2bsigninactivitymetricsbase.md).|
|outboundMonthlyTotalApplications|String|The total number of applications accessed by outbound users in the last month. Inherited from [microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsBase](../resources/tenantgovernanceservices-b2bsigninactivitymetricsbase.md).|
|outboundMonthlyTotalUsers|String|The total number of unique outbound users with sign-in activity in the last month. Inherited from [microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsBase](../resources/tenantgovernanceservices-b2bsigninactivitymetricsbase.md).|
|watermarkDateTime|DateTimeOffset|The date and time when the metrics snapshot was taken. Inherited from [microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsBase](../resources/tenantgovernanceservices-b2bsigninactivitymetricsbase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsInitial",
  "baseType": "microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsInitial",
  "id": "String (identifier)",
  "watermarkDateTime": "String (timestamp)",
  "inboundMonthlyTotalUsers": "String",
  "inboundMonthlyTotalApplications": "String",
  "outboundMonthlyTotalUsers": "String",
  "outboundMonthlyTotalApplications": "String",
  "createdDateTime": "String (timestamp)"
}
```

