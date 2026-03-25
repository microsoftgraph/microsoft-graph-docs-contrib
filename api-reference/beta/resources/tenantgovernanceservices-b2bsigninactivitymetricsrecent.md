---
title: "b2BSignInActivityMetricsRecent resource type"
description: "Represents the most recent snapshot of B2B sign-in activity metrics."
author: "akhil-potturi"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# b2BSignInActivityMetricsRecent resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the most recent snapshot of B2B sign-in activity metrics for a [related tenant](../resources/tenantgovernanceservices-relatedtenant.md), showing current monthly active guests and application counts.

Inherits from [microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsBase](../resources/tenantgovernanceservices-b2bsigninactivitymetricsbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the metrics snapshot. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|inboundMonthlyTotalApplications|String|The total number of applications accessed by inbound users in the last month. Inherited from [microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsBase](../resources/tenantgovernanceservices-b2bsigninactivitymetricsbase.md).|
|inboundMonthlyTotalUsers|String|The total number of unique inbound users with sign-in activity in the last month. Inherited from [microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsBase](../resources/tenantgovernanceservices-b2bsigninactivitymetricsbase.md).|
|outboundMonthlyTotalApplications|String|The total number of applications accessed by outbound users in the last month. Inherited from [microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsBase](../resources/tenantgovernanceservices-b2bsigninactivitymetricsbase.md).|
|outboundMonthlyTotalUsers|String|The total number of unique outbound users with sign-in activity in the last month. Inherited from [microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsBase](../resources/tenantgovernanceservices-b2bsigninactivitymetricsbase.md).|
|updateDateTime|DateTimeOffset|Timestamp that represents the most recent time B2B registration data was aggregated and have sufficiently changed for the related tenant.|
|watermarkDateTime|DateTimeOffset|The date and time when the metrics snapshot was taken. Inherited from [microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsBase](../resources/tenantgovernanceservices-b2bsigninactivitymetricsbase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsRecent",
  "baseType": "microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetricsRecent",
  "id": "String (identifier)",
  "watermarkDateTime": "String (timestamp)",
  "inboundMonthlyTotalUsers": "String",
  "inboundMonthlyTotalApplications": "String",
  "outboundMonthlyTotalUsers": "String",
  "outboundMonthlyTotalApplications": "String",
  "updateDateTime": "String (timestamp)"
}
```

