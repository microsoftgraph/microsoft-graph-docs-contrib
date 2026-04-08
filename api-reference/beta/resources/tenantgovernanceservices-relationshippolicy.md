---
title: "relationshipPolicy resource type"
description: "Represents a snapshot of governance policy configuration stored in a governance relationship or request."
author: "hafowler"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# relationshipPolicy resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a snapshot of governance policy configuration that is stored in a [governanceRelationship](tenantgovernanceservices-governancerelationship.md) or [governanceRequest](tenantgovernanceservices-governancerequest.md). This snapshot preserves the policy state at the time the relationship was created or requested.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|delegatedAdministrationRoleAssignments|[microsoft.graph.tenantGovernanceServices.delegatedAdministrationRoleAssignmentSnapshot](../resources/tenantgovernanceservices-delegatedadministrationroleassignmentsnapshot.md) collection|A snapshot of the delegated administration role assignments configured in this policy.|
|governedTenantCanTerminate|Boolean|Indicates whether the governed tenant can terminate the relationship.|
|multiTenantApplicationsToProvision|[microsoft.graph.tenantGovernanceServices.multiTenantApplicationsToProvisionSnapshot](../resources/tenantgovernanceservices-multitenantapplicationstoprovisionsnapshot.md) collection|A snapshot of the multi-tenant applications to be provisioned in the governed tenant.|
|policyId|String|The identifier of the source policy template from which this snapshot was created.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.relationshipPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.relationshipPolicy",
  "policyId": "String",
  "multiTenantApplicationsToProvision": [
    {
      "@odata.type": "microsoft.graph.tenantGovernanceServices.multiTenantApplicationsToProvisionSnapshot"
    }
  ],
  "delegatedAdministrationRoleAssignments": [
    {
      "@odata.type": "microsoft.graph.tenantGovernanceServices.delegatedAdministrationRoleAssignmentSnapshot"
    }
  ]
}
```

