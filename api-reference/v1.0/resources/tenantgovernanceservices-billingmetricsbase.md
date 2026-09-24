---
title: "billingMetricsBase resource type"
description: "Abstract base type for billing metrics."
author: "akhil-potturi"
ms.date: 08/13/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# billingMetricsBase resource type

Namespace: microsoft.graph

> [!IMPORTANT]
> This is an abstract base type and does not appear directly in API responses. Use the concrete types [billingMetricsInitial](tenantgovernanceservices-billingmetricsinitial.md) or [billingMetricsRecent](tenantgovernanceservices-billingmetricsrecent.md).

Abstract base type that defines common properties for billing metrics.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| foreignAssociatedTenantBillingManagementActiveCount | String | The number of foreign associated tenants with active billing management. |
| foreignAssociatedTenantCount | String | The total number of foreign associated tenants. |
| foreignAssociatedTenantProvisioningActiveCount | String | The number of foreign associated tenants with active provisioning. |
| localAssociatedTenantBillingManagementActiveCount | String | The number of local associated tenants with active billing management. |
| localAssociatedTenantCount | String | The total number of local associated tenants. |
| localAssociatedTenantIds | Collection(String) | The list of local associated tenant IDs. |
| localAssociatedTenantProvisioningActiveCount | String | The number of local associated tenants with active provisioning. |
| watermarkDateTime | DateTimeOffset | The date and time when the metrics snapshot was taken. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

> [!NOTE]
> This abstract type is not returned in API responses. See concrete implementations.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.billingMetricsBase",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.billingMetricsBase",
  "watermarkDateTime": "String (timestamp)",
  "localAssociatedTenantCount": "String",
  "localAssociatedTenantBillingManagementActiveCount": "String",
  "localAssociatedTenantProvisioningActiveCount": "String",
  "localAssociatedTenantIds": ["String"],
  "foreignAssociatedTenantCount": "String",
  "foreignAssociatedTenantBillingManagementActiveCount": "String",
  "foreignAssociatedTenantProvisioningActiveCount": "String"
}
```
