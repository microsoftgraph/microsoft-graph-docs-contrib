---
title: "tenantGovernance resource type"
description: "Container for Microsoft Entra Tenant Governance capabilities."
author: "hafowler"
ms.date: 08/13/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# tenantGovernance resource type

Namespace: microsoft.graph

Container for Microsoft Entra Tenant Governance capabilities.


## Methods
None.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|governanceInvitations|[microsoft.graph.governanceInvitation](../resources/tenantgovernanceservices-governanceinvitation.md) collection|Collection of governance invitations associated with the tenant.|
|governancePolicyTemplates|[microsoft.graph.tenantGovernancePolicyTemplate](../resources/tenantgovernanceservices-tenantgovernancepolicytemplate.md) collection|Collection of governance policy templates associated with the tenant.|
|governanceRelationships|[microsoft.graph.governanceRelationship](../resources/tenantgovernanceservices-governancerelationship.md) collection|Collection of governance relationships associated with the tenant.|
|governanceRequests|[microsoft.graph.governanceRequest](../resources/tenantgovernanceservices-governancerequest.md) collection|Collection of governance requests associated with the tenant.|
|relatedTenants|[microsoft.graph.relatedTenant](../resources/tenantgovernanceservices-relatedtenant.md) collection|Collection of related tenants associated with the tenant.|
|settings|[microsoft.graph.tenantGovernanceSetting](../resources/tenantgovernanceservices-tenantgovernancesetting.md)|Settings for the tenant governance container.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantGovernance"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernance"
}
```
