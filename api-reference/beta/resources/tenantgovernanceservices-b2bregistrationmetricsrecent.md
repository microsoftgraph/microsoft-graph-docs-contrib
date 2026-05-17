---
title: "b2BRegistrationMetricsRecent resource type"
description: "Represents the most recent snapshot of B2B registration metrics."
author: "akhil-potturi"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# b2BRegistrationMetricsRecent resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the most recent snapshot of B2B registration metrics, showing current guest counts between related tenants.

Inherits from [microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsBase](../resources/tenantgovernanceservices-b2bregistrationmetricsbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the metrics snapshot. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|inboundTotalUsers|String|The total number of inbound B2B guest users registered. Inherited from [microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsBase](../resources/tenantgovernanceservices-b2bregistrationmetricsbase.md).|
|outboundTotalUsers|String|The total number of outbound B2B users from this tenant registered in other tenants. Inherited from [microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsBase](../resources/tenantgovernanceservices-b2bregistrationmetricsbase.md).|
|updateDateTime|DateTimeOffset|Timestamp that represents the most recent time B2B registration data was aggregated and have sufficiently changed for the related tenant.|
|watermarkDateTime|DateTimeOffset|The date and time when the metrics snapshot was taken. Inherited from [microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsBase](../resources/tenantgovernanceservices-b2bregistrationmetricsbase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsRecent",
  "baseType": "microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsRecent",
  "id": "String (identifier)",
  "watermarkDateTime": "String (timestamp)",
  "inboundTotalUsers": "String",
  "outboundTotalUsers": "String",
  "updateDateTime": "String (timestamp)"
}
```

