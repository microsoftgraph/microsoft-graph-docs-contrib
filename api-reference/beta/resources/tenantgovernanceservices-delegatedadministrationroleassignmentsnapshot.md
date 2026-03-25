---
title: "delegatedAdministrationRoleAssignmentSnapshot resource type"
description: "Represents a snapshot of a delegated administration role assignment configuration stored in a governance relationship or request."
author: "hafowler"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# delegatedAdministrationRoleAssignmentSnapshot resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a snapshot of a delegated administration role assignment configuration that was captured when a [governanceRelationship](../resources/tenantgovernanceservices-governancerelationship.md) or [governanceRequest](../resources/tenantgovernanceservices-governancerequest.md) was created. This preserves the role assignment configuration as it was defined at that point in time.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|groupId|String|The object ID of the role-assignable security group in the governing tenant that will be assigned the specified roles.|
|roleTemplates|[microsoft.graph.tenantGovernanceServices.roleTemplate](../resources/tenantgovernanceservices-roletemplate.md) collection|The collection of role templates that define the Microsoft Entra roles to be assigned.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.delegatedAdministrationRoleAssignmentSnapshot"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.delegatedAdministrationRoleAssignmentSnapshot",
  "groupId": "String",
  "roleTemplates": [
    {
      "@odata.type": "microsoft.graph.tenantGovernanceServices.roleTemplate"
    }
  ]
}
```
