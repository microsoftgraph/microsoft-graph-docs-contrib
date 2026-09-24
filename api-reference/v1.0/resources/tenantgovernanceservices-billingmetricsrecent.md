---
title: "billingMetricsRecent resource type"
description: "Represents the most recent snapshot of billing metrics."
author: "akhil-potturi"
ms.date: 08/13/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# billingMetricsRecent resource type

Namespace: microsoft.graph

Represents the most recent snapshot of billing metrics, showing current billing account associations and associated tenant connection counts.

Inherits from [microsoft.graph.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|foreignAssociatedTenantBillingManagementActiveCount|String|The number of foreign associated tenants with active billing management. Inherited from [microsoft.graph.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).|
|foreignAssociatedTenantCount|String|The total number of foreign associated tenants. Inherited from [microsoft.graph.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).|
|foreignAssociatedTenantProvisioningActiveCount|String|The number of foreign associated tenants with active provisioning. Inherited from [microsoft.graph.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).|
|localAssociatedTenantBillingManagementActiveCount|String|The number of local associated tenants with active billing management. Inherited from [microsoft.graph.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).|
|localAssociatedTenantCount|String|The total number of local associated tenants. Inherited from [microsoft.graph.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).|
|localAssociatedTenantIds|Collection(String)|The list of local associated tenant IDs. Inherited from [microsoft.graph.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).|
|localAssociatedTenantProvisioningActiveCount|String|The number of local associated tenants with active provisioning. Inherited from [microsoft.graph.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).|
|updateDateTime|DateTimeOffset|Timestamp that represents when billing metrics are aggregated and have sufficiently changed for the related tenant.|
|watermarkDateTime|DateTimeOffset|The date and time when the metrics snapshot was taken. Inherited from [microsoft.graph.billingMetricsBase](../resources/tenantgovernanceservices-billingmetricsbase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.billingMetricsRecent",
  "baseType": "microsoft.graph.billingMetricsBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.billingMetricsRecent",
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
