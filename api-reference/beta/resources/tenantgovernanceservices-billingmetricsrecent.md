---
title: "billingMetricsRecent resource type"
description: "Represents the most recent snapshot of billing metrics."
author: "akhil-potturi"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# billingMetricsRecent resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the most recent snapshot of billing metrics, showing current billing account associations and associated tenant connection counts.

Inherits from [microsoft.graph.tenantGovernanceServices.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|foreignAssociatedTenantBillingManagementActiveCount|String|The number of foreign associated tenants with active billing management. Inherited from [microsoft.graph.tenantGovernanceServices.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).|
|foreignAssociatedTenantCount|String|The total number of foreign associated tenants. Inherited from [microsoft.graph.tenantGovernanceServices.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).|
|foreignAssociatedTenantProvisioningActiveCount|String|The number of foreign associated tenants with active provisioning. Inherited from [microsoft.graph.tenantGovernanceServices.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).|
|id|String|Unique identifier for the metrics snapshot. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|localAssociatedTenantBillingManagementActiveCount|String|The number of local associated tenants with active billing management. Inherited from [microsoft.graph.tenantGovernanceServices.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).|
|localAssociatedTenantCount|String|The total number of local associated tenants. Inherited from [microsoft.graph.tenantGovernanceServices.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).|
|localAssociatedTenantIds|Collection(String)|The list of local associated tenant IDs. Inherited from [microsoft.graph.tenantGovernanceServices.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).|
|localAssociatedTenantProvisioningActiveCount|String|The number of local associated tenants with active provisioning. Inherited from [microsoft.graph.tenantGovernanceServices.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).|
|updateDateTime|DateTimeOffset|Timestamp that represents when billing metrics are aggregated and have sufficiently changed for the related tenant.|
|watermarkDateTime|DateTimeOffset|The date and time when the metrics snapshot was taken. Inherited from [microsoft.graph.tenantGovernanceServices.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.billingMetricsRecent",
  "baseType": "microsoft.graph.tenantGovernanceServices.billingMetricsBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.billingMetricsRecent",
  "id": "String (identifier)",
  "watermarkDateTime": "String (timestamp)",
  "localAssociatedTenantCount": "String",
  "localAssociatedTenantBillingManagementActiveCount": "String",
  "localAssociatedTenantProvisioningActiveCount": "String",
  "localAssociatedTenantIds": [
    "String"
  ],
  "foreignAssociatedTenantCount": "String",
  "foreignAssociatedTenantBillingManagementActiveCount": "String",
  "foreignAssociatedTenantProvisioningActiveCount": "String",
  "updateDateTime": "String (timestamp)"
}
```

