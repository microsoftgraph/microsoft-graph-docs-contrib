---
title: "delegatedAdministrationRoleAssignment resource type"
description: "Represents a role assignment configuration for delegated administration in a governance relationship."
author: "hafowler"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# delegatedAdministrationRoleAssignment resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a role assignment configuration for delegated administration in a governance relationship. Specifies which security group in the governing tenant should be assigned which roles in the governed tenant. This resource is defined in the **delegatedAdministrationRoleAssignment ** property of [governancePolicyTemplate](../resources/tenantgovernanceservices-governancepolicytemplate.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|roleTemplates|[microsoft.graph.tenantGovernanceServices.roleTemplate](../resources/tenantgovernanceservices-roletemplate.md) collection|A collection of role templates that define the roles to be assigned to the group in the governed tenant. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[group](../resources/group.md)|The security group in the governing tenant that will receive the role assignments in the governed tenant. This group must be role-assignable.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.delegatedAdministrationRoleAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.delegatedAdministrationRoleAssignment",
  "roleTemplates": [
    {
      "@odata.type": "microsoft.graph.tenantGovernanceServices.roleTemplate"
    }
  ]
}
```

