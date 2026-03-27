---
title: "tenantGovernance resource type"
description: "Container for Microsoft Entra Tenant Governance capabilities."
author: "hafowler"
ms.date: 03/19/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# tenantGovernance resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Container for Microsoft Entra Tenant Governance capabilities.

Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier for the tenant governance container. Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|governanceInvitations|[microsoft.graph.tenantGovernanceServices.governanceInvitation](../resources/tenantgovernanceservices-governanceinvitation.md) collection|Collection of governance invitations associated with the tenant.|
|governancePolicyTemplates|[microsoft.graph.tenantGovernanceServices.governancePolicyTemplate](../resources/tenantgovernanceservices-governancepolicytemplate.md) collection|Collection of governance policy templates associated with the tenant.|
|governanceRelationships|[microsoft.graph.tenantGovernanceServices.governanceRelationship](../resources/tenantgovernanceservices-governancerelationship.md) collection|Collection of governance relationships associated with the tenant.|
|governanceRequests|[microsoft.graph.tenantGovernanceServices.governanceRequest](../resources/tenantgovernanceservices-governancerequest.md) collection|Collection of governance requests associated with the tenant.|
|relatedTenants|[microsoft.graph.tenantGovernanceServices.relatedTenant](../resources/tenantgovernanceservices-relatedtenant.md) collection|Collection of related tenants associated with the tenant.|
|settings|[microsoft.graph.tenantGovernanceServices.tenantGovernanceSetting](../resources/tenantgovernanceservices-tenantgovernancesetting.md)|Settings for the tenant governance container.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.tenantGovernance",
  "baseType": "microsoft.graph.entity"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.tenantGovernance",
  "id": "String (identifier)"
}
```

