---
title: "unifiedRbacApplicationMultiple resource type"
description: "Represents a role management container for unified role definitions, role assignments and scopes for Microsoft 365 RBAC providers."
author: "adsela"
ms.date: 05/15/2025
ms.localizationpriority: medium
ms.subservice: "defender-xdr"
doc_type: resourcePageType
---

# unifiedRbacApplicationMultiple resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a role management container for unified role definitions and role assignments for role-based access control (RBAC) providers in Microsoft 365. This shared entity is meant to replace [rbacApplication](./rbacapplication.md). Currently, only Defender RbacProvider is using it.


Inherits from [rbacApplicationMultiple](../resources/rbacapplicationmultiple.md), and includes also CustomAppScopes navigation property as in [unifiedRbacApplication](../resources/unifiedrbacapplication.md)


## Methods

None.

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customAppScopes|[customAppScope](../resources/customappscope.md) collection| scope object that represents the resources for which the principal has been granted access. |
|resourceNamespaces|[unifiedRbacResourceNamespace](../resources/unifiedrbacresourcenamespace.md) collection|Resource that represents a collection of related actions. Inherits from [rbacApplicationMultiple](../resources/rbacapplicationmultiple.md)|
|roleAssignments|[unifiedRoleAssignmentMultiple](../resources/unifiedroleassignmentmultiple.md) collection| Resource to grant access to users or groups. Inherits from [rbacApplicationMultiple](../resources/rbacapplicationmultiple.md)|
|roleDefinitions|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection|The roles allowed by RBAC providers and the permissions assigned to the roles. Inherits from [rbacApplicationMultiple](../resources/rbacapplicationmultiple.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRbacApplicationMultiple",
  "baseType": "microsoft.graph.rbacApplicationMultiple",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRbacApplicationMultiple",
  "id": "String (identifier)"
}
```

