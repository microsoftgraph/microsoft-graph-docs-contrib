---
title: "engagementRole resource type"
description: "Represents the role management in Viva Engage which involves fetching various admin roles and corp comm role within the Viva Engage platform."
author: "richafnu"
ms.date: 03/27/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementRole resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Viva Engage handles role management by assigning and managing various administrative roles and corporate communication roles within the platform. Each admin role is mapped in Microsoft Entra ID and [assigned in the Microsoft 365 admin portal](https://learn.microsoft.com/en-us/microsoft-365/admin/add-users/assign-admin-roles?view=o365-worldwide), allowing for the assignment of additional roles for management, tasks, and maintenance.For more details, refer to [https://learn.microsoft.com/en-us/viva/engage/member-roles].

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/employeeexperience-list-roles.md)|[engagementRole](../resources/engagementrole.md) collection|Get a list of the engagementRole objects and their properties.|
|[List](../api/engagementrole-list-members.md)|[engagementRole](../resources/engagementrole.md) collection|Get a list of roles assigned to a member in Viva Engage.|
|[List](../api/employeeexperienceuser-list-assignedroles.md)|[engagementRole](../resources/engagementrole.md)|Get a list of roles assigned to the logged in user in Viva Engage.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the role. The maximum length is 255 characters.|
|id|String|The unique identifier of the role. Read-only. Inherits from [entity](../resources/entity.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.engagementRole",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.engagementRole",
  "id": "String (identifier)",
  "displayName": "String"
}
```

