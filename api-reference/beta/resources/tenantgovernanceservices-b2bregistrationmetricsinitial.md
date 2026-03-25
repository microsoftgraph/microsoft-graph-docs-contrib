---
title: "b2BRegistrationMetricsInitial resource type"
description: "Represents the initial snapshot of B2B registration metrics when the relationship was first discovered."
author: "akhil-potturi"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# b2BRegistrationMetricsInitial resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the initial snapshot of B2B registration metrics captured when the relationship between two tenants was first discovered, establishing a baseline for guest counts.

Inherits from [microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsBase](../resources/tenantgovernanceservices-b2bregistrationmetricsbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Timestamp that represents the date time that B2B registration data was initially aggregated.|
|id|String|Unique identifier for the metrics snapshot. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|inboundTotalUsers|String|The total number of inbound B2B guest users registered. Inherited from [microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsBase](../resources/tenantgovernanceservices-b2bregistrationmetricsbase.md).|
|outboundTotalUsers|String|The total number of outbound B2B users from this tenant registered in other tenants. Inherited from [microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsBase](../resources/tenantgovernanceservices-b2bregistrationmetricsbase.md).|
|watermarkDateTime|DateTimeOffset|The date and time when the metrics snapshot was taken. Inherited from [microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsBase](../resources/tenantgovernanceservices-b2bregistrationmetricsbase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsInitial",
  "baseType": "microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.b2BRegistrationMetricsInitial",
  "id": "String (identifier)",
  "watermarkDateTime": "String (timestamp)",
  "inboundTotalUsers": "String",
  "outboundTotalUsers": "String",
  "createdDateTime": "String (timestamp)"
}
```

