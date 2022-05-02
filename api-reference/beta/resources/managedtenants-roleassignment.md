---
title: "roleAssignment resource type"
description: "Represent the role assignments you have."
author: "idwilliams"
ms.localizationpriority: medium
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# roleAssignment resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent the role assignments you have.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignmentType|delegatedPrivilegeStatus|The type of the admin relationship(s) associated with the role assignment. Possible values are: `none`, `delegatedAdminPrivileges`, `unknownFutureValue`, `granularDelegatedAdminPrivileges`, `delegatedAndGranularDelegetedAdminPrivileges`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `granularDelegatedAdminPrivileges` , `delegatedAndGranularDelegetedAdminPrivileges`.|
|roles|[microsoft.graph.managedTenants.roleDefinition](../resources/managedtenants-intune-roledefinition.md) collection|The collection of roles assigned.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.roleAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.roleAssignment",
  "assignmentType": "String",
  "roles": [
    {
      "@odata.type": "microsoft.graph.managedTenants.roleDefinition"
    }
  ]
}
```
