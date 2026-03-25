---
title: "relatedTenant resource type"
description: "Represents a tenant that has been discovered as related to the current tenant through tenant discovery."
author: "hafowler"
ms.date: 03/19/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# relatedTenant resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a tenant that has been discovered as related to the current tenant through the tenant discovery feature. Related tenants are discovered based on B2B collaboration activity, billing relationships, multi-tenant application usage, and other indicators of inter-tenant relationships.

> [!IMPORTANT]
> The related tenants feature must be explicitly enabled before the tenant governance APIs can be used. To enable related tenants, call the [enableRelatedTenants](../api/tenantgovernanceservices-tenantgovernancesetting-enablerelatedtenants.md) action.


Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/tenantgovernanceservices-list-relatedtenants.md)|[microsoft.graph.tenantGovernanceServices.relatedTenant](../resources/tenantgovernanceservices-relatedtenant.md) collection|Get a list of the [relatedTenant](../resources/tenantgovernanceservices-relatedtenant.md) objects and their properties.|
|[Get](../api/tenantgovernanceservices-relatedtenant-get.md)|[microsoft.graph.tenantGovernanceServices.relatedTenant](../resources/tenantgovernanceservices-relatedtenant.md)|Read the properties of a [relatedTenant](../resources/tenantgovernanceservices-relatedtenant.md) object.|
|[Refresh](../api/tenantgovernanceservices-relatedtenant-refresh.md)|None|Trigger a refresh operation to update the list of related tenants.|
|[Refresh status](../api/tenantgovernanceservices-relatedtenant-refreshstatus.md)|[microsoft.graph.tenantGovernanceServices.relatedTenantsRefreshStatus](../resources/tenantgovernanceservices-relatedtenantsrefreshstatus.md)|Check the status of a related tenants refresh operation.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the related tenant was discovered. The timestamp type represents date and time information using ISO 8601 format and is always in UTC.|
|id|String|The Microsoft Entra tenant ID of the related tenant. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appB2BSignInActivityMetrics|[microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetrics](../resources/tenantgovernanceservices-b2bsigninactivitymetrics.md)|B2B sign-in activity metrics for this related tenant. Expanded by default.|
|b2BRegistrationMetrics|[microsoft.graph.tenantGovernanceServices.b2bRegistrationMetrics](../resources/tenantgovernanceservices-b2bregistrationmetrics.md)|B2B registration metrics for this related tenant. Expanded by default.|
|b2BSignInActivityMetrics|[microsoft.graph.tenantGovernanceServices.b2BSignInActivityMetrics](../resources/tenantgovernanceservices-b2bsigninactivitymetrics.md)|B2B sign-in activity metrics for this related tenant. Expanded by default.|
|billingMetrics|[microsoft.graph.tenantGovernanceServices.billingMetrics](../resources/tenantgovernanceservices-billingmetrics.md)|Billing metrics for this related tenant. Expanded by default.|
|multiTenantApplicationMetrics|[microsoft.graph.tenantGovernanceServices.multiTenantApplicationMetrics](../resources/tenantgovernanceservices-multitenantapplicationmetrics.md)|Multi-tenant application usage metrics for this related tenant. Expanded by default.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.relatedTenant",
  "baseType": "microsoft.graph.entity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.relatedTenant",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)"
}
```

