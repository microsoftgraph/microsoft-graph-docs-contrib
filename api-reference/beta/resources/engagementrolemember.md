---
title: "engagementRoleMember resource type"
description: "Represents the role member management in Viva Engage which involves assigning and managing various administrative roles and corp comm role within the Viva Engage platform."
author: "richafnu"
ms.date: 03/27/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementRoleMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Viva Engage handles role member management by assigning and managing various member roles within the platform. Each member role is mapped in Microsoft Entra ID and [assigned in the Microsoft 365 admin portal](https://learn.microsoft.com/en-us/microsoft-365/admin/add-users/assign-admin-roles?view=o365-worldwide), allowing for the assignment of another roles for collaboration, tasks, and maintenance. For more details, refer to [https://learn.microsoft.com/en-us/viva/engage/member-roles](https://learn.microsoft.com/en-us/viva/engage/eac-key-admin-roles-permissions).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/engagementrole-list-members.md)|[engagementRoleMember](../resources/engagementrolemember.md) collection|Get a list of users with assigned roles in Viva Engage.|
|[Create](../api/engagementrole-post-members.md)|[engagementRoleMember](../resources/engagementrolemember.md)|Assign role to a user in Viva Engage.|
|[Delete](../api/engagementrole-delete-members.md)|None|Delete assigned role for a user in Viva Engage.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The timestamp when the role was assigned to the user.|
|id|String|The unique identifier of the role. Read-only. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|userId|String|The Entra ID of the user who has been assigned any specific role.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|user|[user](../resources/user.md)|Expands the user directory object to get user attributes.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.engagementRoleMember",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.engagementRoleMember",
  "id": "String (identifier)",
  "userId": "String",
  "createdDateTime": "String (timestamp)"
}
```

