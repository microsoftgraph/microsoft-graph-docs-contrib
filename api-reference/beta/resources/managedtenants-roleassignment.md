---
title: "roleAssignment resource type"
description: "Represents the role assignment to a signed-in user for a managed tenant."
author: "idwilliams"
ms.localizationpriority: medium
ms.prod: "multi-tenant-management"
doc_type: resourcePageType
---

# roleAssignment resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the role assignment to a signed-in user for a [managed tenant](../resources/managedtenants-tenant.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignmentType|delegatedPrivilegeStatus|The type of the admin relationship(s) associated with the role assignment. Possible values are: `none`, `delegatedAdminPrivileges`, `unknownFutureValue`, `granularDelegatedAdminPrivileges`, `delegatedAndGranularDelegetedAdminPrivileges`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `granularDelegatedAdminPrivileges` , `delegatedAndGranularDelegetedAdminPrivileges`.|
|roles|[microsoft.graph.managedTenants.roleDefinition](../resources/managedtenants-roledefinition.md) collection|The collection of roles assigned.|

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
